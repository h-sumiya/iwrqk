import 'dart:io';
import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:path/path.dart';
import 'model/discord_presence.dart';
import 'generated/bindings.dart' as bindings;

DynamicLibrary? _dynamicLibrary;

/// ## Discord Rich Presence for Dart & Flutter.
///
/// For integrating Discord Rich Presence into your application or game, you must create an
/// application at [Discord Developer Portal](https://discord.com/developers/applications).
///
/// Initialize the plugin.
/// ```dart
/// void main() {
///   DiscordRPC.initialize();
///   runApp(MyApp());
/// }
/// ```
///
/// Example
///
/// ```dart
/// var rpc = DiscordRPC(
///   applicationId: '877853131025809438',
/// );
/// rpc.start(autoRegister: true);
/// rpc.updatePresence(
///   DiscordPresence(
///     state: 'Discord Rich Presence from Dart. 🎯',
///     details: 'github.com/alexmercerind/dart_discord_rpc',
///     startTimeStamp: DateTime.now().millisecondsSinceEpoch,
///     largeImageKey: 'large_image',
///     largeImageText: 'This text describes the large image.',
///     smallImageKey: 'small_image',
///     smallImageText: 'This text describes the small image.',
///   ),
/// );
/// ```
///
class DiscordRPC {
  /// ID of your application at Discord Developer Portal.
  final String applicationId;

  /// Steam ID.
  final String? steamId;

  late bindings.DiscordRPC _bindings;

  DiscordRPC({required this.applicationId, this.steamId}) {
    final library = _dynamicLibrary;
    if (library == null) {
      throw Exception(
        "Discord RPC has not been initialized! Please run 'DiscordRPC.initialize()'.",
      );
    }
    _bindings = bindings.DiscordRPC(library);
  }

  /// Registers the rich presence client.
  void register(String command) {
    _bindings.Discord_Register(
      applicationId.toNativeUtf8().cast<Char>(),
      command.toNativeUtf8().cast<Char>(),
    );
  }

  /// Registers the steam game.
  void registerSteamGame() {
    _bindings.Discord_RegisterSteamGame(
      applicationId.toNativeUtf8().cast<Char>(),
      (steamId ?? '').toNativeUtf8().cast<Char>(),
    );
  }

  /// Starts the Discord Rich Presence.
  void start({bool autoRegister = false}) {
    _bindings.Discord_Initialize(
      applicationId.toNativeUtf8().cast<Char>(),
      calloc<bindings.DiscordEventHandlers>(),
      autoRegister == false ? 0 : 1,
      (steamId ?? '').toNativeUtf8().cast<Char>(),
    );
  }

  /// Updates the presence of the [DiscordUser], takes [DiscordPresence] as argument.
  /// Describing current user presence inside the application or game.
  ///
  /// For showing the user's start time from present, you must pass [DiscordPresence.startTimeStamp] as `DateTime.now().millisecondsSinceEpoch`.
  ///
  void updatePresence(DiscordPresence presence) {
    var presencePtr = calloc<bindings.DiscordRichPresence>();
    presencePtr.ref.state = (presence.state ?? '').toNativeUtf8().cast<Char>();
    presencePtr.ref.details =
        (presence.details ?? '').toNativeUtf8().cast<Char>();
    presencePtr.ref.startTimestamp = presence.startTimeStamp ?? 0;
    presencePtr.ref.endTimestamp = presence.endTimeStamp ?? 0;
    presencePtr.ref.largeImageKey =
        (presence.largeImageKey ?? '').toNativeUtf8().cast<Char>();
    presencePtr.ref.largeImageText =
        (presence.largeImageText ?? '').toNativeUtf8().cast<Char>();
    presencePtr.ref.smallImageKey =
        (presence.smallImageKey ?? '').toNativeUtf8().cast<Char>();
    presencePtr.ref.smallImageText =
        (presence.smallImageText ?? '').toNativeUtf8().cast<Char>();
    presencePtr.ref.partySize = presence.partySize ?? 0;
    presencePtr.ref.matchSecret =
        (presence.matchSecret ?? '').toNativeUtf8().cast<Char>();
    presencePtr.ref.joinSecret =
        (presence.joinSecret ?? '').toNativeUtf8().cast<Char>();
    presencePtr.ref.spectateSecret =
        (presence.spectateSecret ?? '').toNativeUtf8().cast<Char>();
    presencePtr.ref.instance = presence.instance ?? 0;
    _bindings.Discord_UpdatePresence(presencePtr);
    calloc.free(presencePtr);
  }

  /// Shuts down the Discord RPC.
  void shutDown() {
    _bindings.Discord_Shutdown();
  }

  /// Clears the previously set [DiscordPresence] for the user.
  void clearPresence() {
    _bindings.Discord_ClearPresence();
  }

  /// Responds to the user.
  void respond(String userId, int reply) {
    _bindings.Discord_Respond(
      userId.toNativeUtf8().cast<Char>(),
      reply,
    );
  }

  /// Initializes the plugin.
  ///
  /// ```dart
  /// void main() {
  ///   DiscordRPC.initialize();
  ///   runApp(MyApp());
  /// }
  /// ```
  ///
  static void initialize() {
    if (_dynamicLibrary != null) {
      throw Exception("DiscordRPC has already been initialized.");
    }
    if (Platform.isLinux) {
      _dynamicLibrary = DynamicLibrary.open(
        join(
          dirname(Platform.resolvedExecutable),
          'lib',
          'libdiscord-rpc.so',
        ),
      );
    } else if (Platform.isWindows) {
      _dynamicLibrary = DynamicLibrary.open(
        join(
          dirname(Platform.resolvedExecutable),
          'discord-rpc.dll',
        ),
      );
    } else {
      throw Exception(
        "Unsupported DiscordRPC platform: '${Platform.operatingSystem}'.",
      );
    }
  }
}
