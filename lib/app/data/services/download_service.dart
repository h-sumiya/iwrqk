import 'dart:async';
import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:background_downloader/background_downloader.dart' as bg;
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:iwrqk/i18n/strings.g.dart';
import 'package:path/path.dart';

import '../../utils/directory_extension.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../utils/log_util.dart';
import '../../utils/path_util.dart';
import '../models/download_task.dart';
import '../models/offline/download_task_media.dart';
import '../providers/storage_provider.dart';

class IwrDownloadTaskStatus {
  DownloadTaskStatus status;
  int progress;

  IwrDownloadTaskStatus({required this.status, required this.progress});
}

class DownloadService extends GetxService {
  final int maxDownloadingCount = 5;

  final RxMap<String, Rx<IwrDownloadTaskStatus>> _downloadTasksStatus =
      <String, Rx<IwrDownloadTaskStatus>>{}.obs;

  RxMap<String, Rx<IwrDownloadTaskStatus>> get downloadTasksStatus =>
      _downloadTasksStatus;

  List<DownloadTask> currentTasks = [];

  // Stream for download completion
  RxInt currentDownloading = 0.obs;

  final ReceivePort _port = ReceivePort();
  static const String _portName = 'downloader_send_port';

  @override
  void onInit() {
    super.onInit();

    resetAllowMediaScan();

    if (GetPlatform.isDesktop) {
      bg.FileDownloader().registerCallbacks(
        taskStatusCallback: (bg.TaskStatusUpdate update) {
          int progress =
              _downloadTasksStatus[update.task.taskId]?.value.progress ?? 0;
          _downloadTasksStatus[update.task.taskId]?.value =
              IwrDownloadTaskStatus(
            status: _convertBgStatus(update.status),
            progress: progress,
          );

          if (update.status == bg.TaskStatus.enqueued) {
            currentDownloading++;
          } else if (update.status == bg.TaskStatus.complete ||
              update.status == bg.TaskStatus.failed ||
              update.status == bg.TaskStatus.canceled) {
            currentDownloading--;
          }

          _downloadTasksStatus.refresh();
        },
        taskProgressCallback: (bg.TaskProgressUpdate update) {
          if (_downloadTasksStatus.containsKey(update.task.taskId)) {
            _downloadTasksStatus[update.task.taskId]?.value.progress =
                _convertBgProgress(update.progress);
            _downloadTasksStatus.refresh();
          }
        },
      );
      bg.FileDownloader().start();
      _getTasksStatusFromRecordsDesktop();
    } else {
      _bindBackgroundIsolate();
      FlutterDownloader.registerCallback(downloadCallback);
      _getTasksStatusFromRecords();
    }
  }

  @override
  void onClose() {
    if (!GetPlatform.isDesktop) {
      _unbindBackgroundIsolate();
    }
    super.onClose();
  }

  void resetAllowMediaScan() {
    allowMediaScan(
      StorageProvider.config.get(
        StorageKey.allowMediaScan,
        defaultValue: false,
      ),
    );
  }

  void _bindBackgroundIsolate() {
    if (GetPlatform.isDesktop) return;
    final isSuccess = IsolateNameServer.registerPortWithName(
      _port.sendPort,
      _portName,
    );

    if (!isSuccess) {
      _unbindBackgroundIsolate();
      _bindBackgroundIsolate();
      return;
    }

    _port.listen((dynamic data) {
      String id = data[0];
      DownloadTaskStatus status = DownloadTaskStatus.fromInt(data[1]);
      int progress = data[2];

      _downloadTasksStatus[id]!.value = IwrDownloadTaskStatus(
        status: status,
        progress: progress,
      );

      if (status == DownloadTaskStatus.enqueued) {
        currentDownloading++;
      } else if (status == DownloadTaskStatus.complete ||
          status == DownloadTaskStatus.failed ||
          status == DownloadTaskStatus.canceled) {
        currentDownloading--;
      }

      _downloadTasksStatus.refresh();
    });
  }

  void _unbindBackgroundIsolate() {
    if (!GetPlatform.isDesktop) {
      IsolateNameServer.removePortNameMapping(_portName);
    }
  }

  Future<void> allowMediaScan(bool allow) async {
    final downloadPath = downloadDirectory;

    if (downloadPath == null) {
      return;
    }

    final File noMediaFile = downloadPath.file('.nomedia');

    if (allow && await noMediaFile.exists()) {
      noMediaFile.delete(recursive: true);
    } else if (!allow && !await noMediaFile.exists()) {
      noMediaFile.create(recursive: true);
    }
  }

  Directory? get downloadDirectory {
    final String? savedDir = StorageProvider.config.get(
      StorageKey.downloadDirectory,
      defaultValue: null,
    );

    if (savedDir != null) {
      return Directory(savedDir);
    }

    return PathUtil.getVisibleDir().dir('downloads');
  }

  // User has chosen a directory that is not in the SAF
  bool get downloadPathInSAF =>
      downloadDirectory?.path != PathUtil.getVisibleDir().dir('downloads').path;

  @pragma('vm:entry-point')
  static void downloadCallback(String id, int status, int progress) {
    final SendPort? send = IsolateNameServer.lookupPortByName(_portName);
    send?.send([id, status, progress]);
  }

  void _getTasksStatusFromRecords() async {
    var records = await FlutterDownloader.loadTasks() ?? [];

    if (records.isNotEmpty) {
      for (var record in records) {
        _downloadTasksStatus.addAll({
          record.taskId: IwrDownloadTaskStatus(
            status: record.status,
            progress: record.progress,
          ).obs,
        });
      }
    }

    _downloadTasksStatus.refresh();
  }

  void _getTasksStatusFromRecordsDesktop() async {
    var records = await bg.FileDownloader().database.allRecords();

    if (records.isNotEmpty) {
      for (var record in records) {
        _downloadTasksStatus.addAll({
          record.task.taskId: IwrDownloadTaskStatus(
            status: _convertBgStatus(record.status),
            progress: _convertBgProgress(record.progress),
          ).obs,
        });
      }
    }

    _downloadTasksStatus.refresh();
  }

  DownloadTaskStatus _convertBgStatus(bg.TaskStatus status) {
    switch (status) {
      case bg.TaskStatus.enqueued:
        return DownloadTaskStatus.enqueued;
      case bg.TaskStatus.running:
        return DownloadTaskStatus.running;
      case bg.TaskStatus.complete:
        return DownloadTaskStatus.complete;
      case bg.TaskStatus.canceled:
        return DownloadTaskStatus.canceled;
      case bg.TaskStatus.paused:
        return DownloadTaskStatus.paused;
      case bg.TaskStatus.failed:
      case bg.TaskStatus.notFound:
        return DownloadTaskStatus.failed;
      case bg.TaskStatus.waitingToRetry:
        return DownloadTaskStatus.enqueued;
    }
  }

  int _convertBgProgress(double progress) {
    if (progress.isNegative) return 0;
    return (progress * 100).round();
  }

  Future<bool> checkPermission([bool checkExternalStorage = false]) async {
    if (GetPlatform.isMacOS) return true;

    if (GetPlatform.isAndroid) {
      if (checkExternalStorage) {
        try {
          await Permission.manageExternalStorage.request();
          LogUtil.info(await Permission.manageExternalStorage.status);
          if (!await Permission.manageExternalStorage.isGranted) {
            return false;
          }
        } on Exception catch (e) {
          LogUtil.error('Request manageExternalStorage permission failed!', e);
          return false;
        }
      }

      AndroidDeviceInfo androidInfo = await DeviceInfoPlugin().androidInfo;
      if (androidInfo.version.sdkInt > 32) return true;
    }

    try {
      await Permission.storage.request().isGranted;
      LogUtil.info(await Permission.storage.status);
      return await Permission.storage.isGranted;
    } on Exception catch (e) {
      LogUtil.error('Request storage permission failed!', e);
      return false;
    }
  }

  bool checkPermissionForPath(String path) {
    try {
      final dir = Directory(path);
      if (!dir.existsSync()) {
        dir.createSync(recursive: true);
      }

      // Try to write a temporary file to ensure the directory is writable.
      final testFile = dir.file('.iwrqktest');
      testFile.writeAsStringSync('');
      testFile.deleteSync();
    } on FileSystemException catch (e) {
      LogUtil.error('${'invalidPath'.tr}:$path', e);
      return false;
    }

    return true;
  }

  Future<String?> addDownloadTask({
    required String downloadUrl,
    required String fileName,
    required String subDirectory,
  }) async {
    bool isStorage = await checkPermission(downloadPathInSAF);
    if (!isStorage) {
      SmartDialog.showToast(t.message.download.no_provide_storage_permission);
      return null;
    }

    Directory? directory = downloadDirectory;

    if (directory == null) {
      SmartDialog.showToast(t.message.download.no_provide_storage_permission);
      return null;
    }

    Directory path = directory.dir(subDirectory);

    if (!path.existsSync()) {
      path.createSync(recursive: true);
    }

    if (GetPlatform.isDesktop) {
      var records = await bg.FileDownloader().database.allRecords();
      if (records.isNotEmpty) {
        bool hasExisted = records.any(
          (var record) =>
              basename(record.task.directory) == subDirectory &&
              record.task.filename == fileName,
        );
        if (hasExisted) {
          SmartDialog.showToast(t.message.download.task_already_exists);
          return null;
        }
      }

      var task = bg.DownloadTask(
        url: downloadUrl,
        filename: fileName,
        directory: path.path,
        baseDirectory: bg.BaseDirectory.root,
        updates: bg.Updates.statusAndProgress,
        allowPause: true,
      );

      bool success = await bg.FileDownloader().enqueue(task);
      return success ? task.taskId : null;
    }

    var records = await FlutterDownloader.loadTasks() ?? [];
    if (records.isNotEmpty) {
      bool hasExisted = records.any(
        (var record) =>
            basename(record.savedDir) == subDirectory &&
            record.filename == fileName,
      );
      if (hasExisted) {
        SmartDialog.showToast(t.message.download.task_already_exists);
        return null;
      }
    }

    return await FlutterDownloader.enqueue(
      url: downloadUrl,
      fileName: fileName,
      savedDir: path.path,
      showNotification: false,
      openFileFromNotification: false,
    );
  }

  Future<VideoDownloadTask?> createVideoDownloadTask({
    required String url,
    required String resolutionName,
    required DownloadTaskMediaModel offlineMedia,
  }) async {
    String? downloadTaskId;

    DateTime now = DateTime.now();
    Uri uri = Uri.parse(url);
    int expireTime = int.parse(uri.queryParameters['expires']!);
    String fileName = uri.queryParameters['filename']!;

    await addDownloadTask(
      downloadUrl: url,
      fileName: resolutionName + extension(fileName),
      subDirectory: offlineMedia.title,
    ).then((value) {
      downloadTaskId = value;
    });

    if (downloadTaskId != null) {
      VideoDownloadTask task = VideoDownloadTask(
        taskId: downloadTaskId!,
        createTime: now,
        expireTime: expireTime,
        resolutionName: resolutionName,
        offlineMedia: offlineMedia,
      );
      return task;
    } else {
      return null;
    }
  }

  Future<bool> addVideoDownloadTask({
    required String url,
    required String resolutionName,
    required DownloadTaskMediaModel offlineMedia,
  }) async {
    var task = await createVideoDownloadTask(
      url: url,
      resolutionName: resolutionName,
      offlineMedia: offlineMedia,
    );

    if (task != null) {
      _downloadTasksStatus.addAll({
        task.taskId: IwrDownloadTaskStatus(
          status: DownloadTaskStatus.enqueued,
          progress: 0,
        ).obs,
      });

      StorageProvider.downloadVideoRecords.add(task);
      return true;
    } else {
      return false;
    }
  }

  Future<DownloadTask?> getTask(String taskId) async {
    if (GetPlatform.isDesktop) {
      var record = await bg.FileDownloader().database.recordForId(taskId);
      if (record == null) return null;
      var task = record.task;
      return DownloadTask(
        taskId: task.taskId,
        status: _convertBgStatus(record.status),
        progress: _convertBgProgress(record.progress),
        url: task.url,
        filename: task.filename,
        savedDir: task.directory,
        timeCreated: task.creationTime.millisecondsSinceEpoch,
        allowCellular: true,
      );
    }

    return FlutterDownloader.loadTasksWithRawQuery(
      query: "SELECT * FROM task WHERE task_id = '$taskId'",
    ).then((value) {
      List<DownloadTask> result = value ?? [];
      return result.isNotEmpty ? result.first : null;
    });
  }

  Future<int> get currentDownloadingCount async {
    if (GetPlatform.isDesktop) {
      var records = await bg.FileDownloader().database.allRecordsWithStatus(
            bg.TaskStatus.running,
          );
      return records.length;
    }

    return FlutterDownloader.loadTasksWithRawQuery(
      query:
          "SELECT * FROM task WHERE status = ${DownloadTaskStatus.running.index}",
    ).then((value) {
      List<DownloadTask> result = value ?? [];
      return result.length;
    });
  }

  Future<String?> getTaskFilePath(String taskId) async {
    if (GetPlatform.isDesktop) {
      var record = await bg.FileDownloader().database.recordForId(taskId);
      if (record == null) return null;
      var task = record.task;
      return Directory(task.directory).file(task.filename).path;
    }

    return getTask(taskId).then((value) {
      if (value == null) {
        return null;
      }
      return Directory(value.savedDir).file(value.filename!).path;
    });
  }

  Future<void> pauseTask(String taskId) {
    if (GetPlatform.isDesktop) {
      return bg.FileDownloader().taskForId(taskId).then((task) async {
        if (task is bg.DownloadTask) {
          await bg.FileDownloader().pause(task);
        }
      });
    }
    return FlutterDownloader.pause(taskId: taskId);
  }

  void refreshTask(String taskId, String newTaskId) {
    _downloadTasksStatus.addAll({
      newTaskId: IwrDownloadTaskStatus(
        status: DownloadTaskStatus.enqueued,
        progress: 0,
      ).obs,
    });

    _downloadTasksStatus.remove(taskId);
    _downloadTasksStatus.refresh();
  }

  Future<String?> resumeTask(String taskId) async {
    if (GetPlatform.isDesktop) {
      var task = await bg.FileDownloader().taskForId(taskId);
      if (task is bg.DownloadTask) {
        await bg.FileDownloader().resume(task);
        return taskId;
      }
      return null;
    }

    String? newTaskId = await FlutterDownloader.resume(taskId: taskId);
    if (newTaskId != null) {
      refreshTask(taskId, newTaskId);

      VideoDownloadTask task = StorageProvider.downloadVideoRecords
          .get()
          .firstWhere((element) => element.taskId == taskId);

      VideoDownloadTask newTask = VideoDownloadTask(
        taskId: newTaskId,
        createTime: task.createTime,
        expireTime: task.expireTime,
        resolutionName: task.resolutionName,
        offlineMedia: task.offlineMedia,
      );

      StorageProvider.downloadVideoRecords.updateWhere(
        (element) => element.taskId == taskId,
        newTask,
      );

      return newTaskId;
    }
    return null;
  }

  Future<String?> retryTask(String taskId) async {
    if (GetPlatform.isDesktop) {
      var task = await bg.FileDownloader().taskForId(taskId);
      if (task is bg.DownloadTask) {
        await bg.FileDownloader().resume(task);
        return taskId;
      }
      return null;
    }

    String? newTaskId = await FlutterDownloader.retry(taskId: taskId);
    if (newTaskId != null) {
      refreshTask(taskId, newTaskId);

      VideoDownloadTask task = StorageProvider.downloadVideoRecords
          .get()
          .firstWhere((element) => element.taskId == taskId);

      VideoDownloadTask newTask = VideoDownloadTask(
        taskId: newTaskId,
        createTime: task.createTime,
        expireTime: task.expireTime,
        resolutionName: task.resolutionName,
        offlineMedia: task.offlineMedia,
      );

      StorageProvider.downloadVideoRecords.updateWhere(
        (element) => element.taskId == taskId,
        newTask,
      );

      return newTaskId;
    }
    return null;
  }

  Future<void> cancelTask(String taskId) {
    if (GetPlatform.isDesktop) {
      return bg.FileDownloader().cancelTaskWithId(taskId);
    }
    return FlutterDownloader.cancel(taskId: taskId);
  }

  Future<void> deleteTaskRecord(String taskId) async {
    if (GetPlatform.isDesktop) {
      await bg.FileDownloader().database.deleteRecordWithId(taskId);
    } else {
      await FlutterDownloader.remove(
        taskId: taskId,
        shouldDeleteContent: false,
      );
    }
  }
}
