import 'dart:async';
import 'dart:io';

import 'package:background_downloader/background_downloader.dart' as bg;
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:iwrqk/i18n/strings.g.dart';
import 'package:path/path.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../utils/directory_extension.dart';
import '../../utils/log_util.dart';
import '../../utils/path_util.dart';
import '../enums/download_task_status.dart';
import '../models/download_task.dart';
import '../models/offline/download_task_media.dart';
import '../providers/storage_provider.dart';

@pragma('vm:entry-point')
void iwrDownloadStatusCallback(bg.TaskStatusUpdate update) {
  DownloadService.instance?._handleStatusUpdate(update);
}

@pragma('vm:entry-point')
void iwrDownloadProgressCallback(bg.TaskProgressUpdate update) {
  DownloadService.instance?._handleProgressUpdate(update);
}

class IwrDownloadTaskStatus {
  DownloadTaskStatus status;
  int progress;

  IwrDownloadTaskStatus({required this.status, required this.progress});
}

class DownloadService extends GetxService {
  static DownloadService? _instance;

  static DownloadService? get instance => _instance;

  final int maxDownloadingCount = 5;

  final RxMap<String, Rx<IwrDownloadTaskStatus>> _downloadTasksStatus =
      <String, Rx<IwrDownloadTaskStatus>>{}.obs;

  RxMap<String, Rx<IwrDownloadTaskStatus>> get downloadTasksStatus =>
      _downloadTasksStatus;

  // Stream for download completion
  RxInt currentDownloading = 0.obs;

  @override
  void onInit() {
    super.onInit();
    _instance = this;

    resetAllowMediaScan();

    bg.FileDownloader().registerCallbacks(
      taskStatusCallback: iwrDownloadStatusCallback,
      taskProgressCallback: iwrDownloadProgressCallback,
    );
    bg.FileDownloader().start();
    _getTasksStatusFromRecords();
  }

  @override
  void onClose() {
    _instance = null;
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

  void _handleStatusUpdate(bg.TaskStatusUpdate update) {
    final status = _convertBgStatus(update.status);
    final existing = _downloadTasksStatus[update.task.taskId];
    final progress = existing?.value.progress ?? 0;

    if (existing != null) {
      existing.value = IwrDownloadTaskStatus(
        status: status,
        progress: progress,
      );
    } else {
      _downloadTasksStatus[update.task.taskId] = IwrDownloadTaskStatus(
        status: status,
        progress: progress,
      ).obs;
    }

    _recalculateCurrentDownloading();
    _downloadTasksStatus.refresh();
  }

  void _handleProgressUpdate(bg.TaskProgressUpdate update) {
    final progress = _convertBgProgress(update.progress);

    _downloadTasksStatus.putIfAbsent(
      update.task.taskId,
      () => IwrDownloadTaskStatus(
        status: DownloadTaskStatus.running,
        progress: progress,
      ).obs,
    );

    _downloadTasksStatus[update.task.taskId]?.value.progress = progress;
    _downloadTasksStatus.refresh();
  }

  void _recalculateCurrentDownloading() {
    currentDownloading.value = _downloadTasksStatus.values
        .where(
          (status) =>
              status.value.status == DownloadTaskStatus.enqueued ||
              status.value.status == DownloadTaskStatus.running,
        )
        .length;
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

  void _getTasksStatusFromRecords() async {
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

    _recalculateCurrentDownloading();
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

  Future<bool> checkPermission() async {
    if (!GetPlatform.isAndroid) return true;

    try {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      if (androidInfo.version.sdkInt >= 30) {
        await Permission.manageExternalStorage.request();
        LogUtil.info(await Permission.manageExternalStorage.status);
        return await Permission.manageExternalStorage.isGranted;
      }
    } on Exception catch (e) {
      LogUtil.error('Request manageExternalStorage permission failed!', e);
      return false;
    }

    try {
      await Permission.storage.request();
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
    bool hasPermission = await checkPermission();
    if (!hasPermission) {
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
    if (success) {
      _downloadTasksStatus[task.taskId] = IwrDownloadTaskStatus(
        status: DownloadTaskStatus.enqueued,
        progress: 0,
      ).obs;
      _recalculateCurrentDownloading();
      _downloadTasksStatus.refresh();
    }
    return success ? task.taskId : null;
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

    downloadTaskId = await addDownloadTask(
      downloadUrl: url,
      fileName: resolutionName + extension(fileName),
      subDirectory: offlineMedia.title,
    );

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
      _downloadTasksStatus.putIfAbsent(
        task.taskId,
        () => IwrDownloadTaskStatus(
          status: DownloadTaskStatus.enqueued,
          progress: 0,
        ).obs,
      );
      _recalculateCurrentDownloading();
      _downloadTasksStatus.refresh();

      StorageProvider.downloadVideoRecords.add(task);
      return true;
    } else {
      return false;
    }
  }

  Future<bg.TaskRecord?> getTask(String taskId) {
    return bg.FileDownloader().database.recordForId(taskId);
  }

  Future<int> get currentDownloadingCount async {
    var records = await bg.FileDownloader().database.allRecordsWithStatus(
      bg.TaskStatus.running,
    );
    return records.length;
  }

  Future<String?> getTaskFilePath(String taskId) async {
    final record = await getTask(taskId);
    if (record == null) return null;
    final task = record.task;
    return Directory(task.directory).file(task.filename).path;
  }

  Future<void> pauseTask(String taskId) async {
    final task = await bg.FileDownloader().taskForId(taskId);
    if (task is bg.DownloadTask) {
      await bg.FileDownloader().pause(task);
    }
  }

  void refreshTask(String taskId, String newTaskId) {
    _downloadTasksStatus.addAll({
      newTaskId: IwrDownloadTaskStatus(
        status: DownloadTaskStatus.enqueued,
        progress: 0,
      ).obs,
    });

    _downloadTasksStatus.remove(taskId);
    _recalculateCurrentDownloading();
    _downloadTasksStatus.refresh();
  }

  Future<String?> resumeTask(String taskId) async {
    final task = await bg.FileDownloader().taskForId(taskId);
    if (task is bg.DownloadTask) {
      await bg.FileDownloader().resume(task);
      return taskId;
    }
    return null;
  }

  Future<String?> retryTask(String taskId) async {
    final task = await bg.FileDownloader().taskForId(taskId);
    if (task is bg.DownloadTask) {
      await bg.FileDownloader().resume(task);
      return taskId;
    }
    return null;
  }

  Future<void> cancelTask(String taskId) {
    return bg.FileDownloader().cancelTaskWithId(taskId);
  }

  Future<void> deleteTaskRecord(String taskId) async {
    await bg.FileDownloader().database.deleteRecordWithId(taskId);
    _downloadTasksStatus.remove(taskId);
    _recalculateCurrentDownloading();
    _downloadTasksStatus.refresh();
  }
}
