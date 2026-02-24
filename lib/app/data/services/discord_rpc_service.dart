import 'package:dart_discord_rpc/dart_discord_rpc.dart';
import 'package:get/get.dart';

import '../../components/plugin/pl_player/models/play_status.dart';
import '../../utils/log_util.dart';
import 'config_service.dart';

class _DiscordNowPlaying {
  const _DiscordNowPlaying({
    required this.title,
    required this.artist,
    this.durationSeconds,
  });

  final String title;
  final String artist;
  final int? durationSeconds;
}

class DiscordRpcService extends GetxService {
  static const String _applicationId = '1475870626697969724';

  final ConfigService _configService = Get.find();

  DiscordRPC? _rpc;
  bool _initialized = false;
  bool _started = false;
  bool _enabled = false;
  int? _appStartTimestamp;

  _DiscordNowPlaying? _nowPlaying;
  PlayerStatus _playerStatus = PlayerStatus.paused;
  Duration _currentPosition = Duration.zero;

  bool get _supportedPlatform => GetPlatform.isWindows || GetPlatform.isLinux;

  @override
  void onInit() {
    super.onInit();
    _enabled = _configService.setting.get(
      ConfigKey.enableDiscordRichPresence,
      defaultValue: false,
    );
    if (_enabled) {
      _start();
      _syncPresence();
    }
  }

  void setEnabled(bool enabled) {
    _enabled = enabled;
    if (_enabled) {
      _start();
      _syncPresence();
      return;
    }
    _shutdown();
  }

  void onVideoChange({
    required String title,
    required String artist,
    int? durationSeconds,
  }) {
    _nowPlaying = _DiscordNowPlaying(
      title: title.trim(),
      artist: artist.trim(),
      durationSeconds: durationSeconds,
    );
    _playerStatus = PlayerStatus.paused;
    _currentPosition = Duration.zero;
    _syncPresence();
  }

  void onPlayerStatusChange(PlayerStatus status) {
    _playerStatus = status;
    _syncPresence();
  }

  void onPositionChange(Duration position) {
    _currentPosition = position;
  }

  void onVideoDetailDispose() {
    _nowPlaying = null;
    _playerStatus = PlayerStatus.paused;
    _currentPosition = Duration.zero;
    _syncPresence();
  }

  void _start() {
    if (!_enabled || !_supportedPlatform) return;

    _appStartTimestamp ??= DateTime.now().millisecondsSinceEpoch;

    try {
      if (!_initialized) {
        DiscordRPC.initialize();
        _initialized = true;
      }

      _rpc ??= DiscordRPC(applicationId: _applicationId);

      if (!_started) {
        _rpc!.start(autoRegister: true);
        _started = true;
      }
    } catch (error, stackTrace) {
      LogUtil.error('Failed to start Discord RPC', error, stackTrace);
    }
  }

  void _syncPresence() {
    if (!_enabled || !_supportedPlatform || !_started || _rpc == null) {
      return;
    }

    try {
      if (_nowPlaying == null) {
        _rpc!.updatePresence(
          DiscordPresence(
            details: 'IwrQk',
            state: 'Running',
            startTimeStamp: _appStartTimestamp,
          ),
        );
        return;
      }

      final bool isPlaying = _playerStatus == PlayerStatus.playing;
      final String statusText = switch (_playerStatus) {
        PlayerStatus.playing => 'Playing',
        PlayerStatus.paused => 'Paused',
        PlayerStatus.completed => 'Completed',
      };

      String state = statusText;
      if (_nowPlaying!.artist.isNotEmpty) {
        state = '$statusText - ${_nowPlaying!.artist}';
      }

      int? startTimestamp;
      int? endTimestamp;

      if (isPlaying) {
        startTimestamp =
            DateTime.now().millisecondsSinceEpoch -
            _currentPosition.inMilliseconds;

        if (_nowPlaying!.durationSeconds != null &&
            _nowPlaying!.durationSeconds! > 0) {
          endTimestamp =
              startTimestamp + (_nowPlaying!.durationSeconds! * 1000);
        }
      }

      _rpc!.updatePresence(
        DiscordPresence(
          details: _nowPlaying!.title,
          state: state,
          startTimeStamp: startTimestamp,
          endTimeStamp: endTimestamp,
        ),
      );
    } catch (error, stackTrace) {
      LogUtil.error(
        'Failed to update Discord Rich Presence',
        error,
        stackTrace,
      );
    }
  }

  void _shutdown() {
    if (_rpc == null) return;

    try {
      _rpc!.clearPresence();
      _rpc!.shutDown();
    } catch (error, stackTrace) {
      LogUtil.error('Failed to shutdown Discord RPC', error, stackTrace);
    }

    _rpc = null;
    _started = false;
  }

  @override
  void onClose() {
    _shutdown();
    super.onClose();
  }
}
