// Model does not depend on native libraries, so it can be exported as-is.
export 'model/discord_presence.dart';

// Use stub if native Discord RPC is not supported.
export 'dart_discord_rpc_stub.dart'
    if (dart.library.io) 'dart_discord_rpc_native.dart';
