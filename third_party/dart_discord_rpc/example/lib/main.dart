import 'package:flutter/material.dart';
import 'package:dart_discord_rpc/dart_discord_rpc.dart';

void main() {
  DiscordRPC.initialize();
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  DiscordRPC discord = DiscordRPC(
    applicationId: '877853131025809438',
  );

  @override
  void initState() {
    super.initState();
    discord.start(autoRegister: true);
    discord.updatePresence(
      DiscordPresence(
        state: 'Discord Rich Presence from Dart. 🎯',
        details: 'github.com/alexmercerind/dart_discord_rpc',
        startTimeStamp: DateTime.now().millisecondsSinceEpoch,
        largeImageKey: 'large_image',
        largeImageText: 'This text describes the large image.',
        smallImageKey: 'small_image',
        smallImageText: 'This text describes the small image.',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('dart_discord_rpc'),
        ),
        body: Center(
          child: Text('Open Discord to see the plugin working.'),
        ),
      ),
    );
  }
}
