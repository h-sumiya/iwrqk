import 'model/discord_presence.dart';

// Stub implementation for unsupported platforms.
// This prevents errors when compiling for web.
class DiscordRPC {
  DiscordRPC({
    required String applicationId,
    String? steamId,
  });

  void register(String command) {}
  void registerSteamGame() {}
  void start({bool autoRegister = false}) {}
  void updatePresence(DiscordPresence presence) {}
  void shutDown() {}
  void clearPresence() {}
  void respond(String userId, int reply) {}
  static void initialize() {}
}
