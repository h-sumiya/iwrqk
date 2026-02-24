<h1 align='center'><a href='https://github.com/alexmercerind/dart_discord_rpc'>dart_discord_rpc</a></h1>
<h4 align='center'>Discord Rich Presence for Flutter & Dart apps & games.</h4>
<br></br>

<p align='center'><img height='160' src='https://github.com/alexmercerind/dart_discord_rpc/blob/master/image.png?raw=true'></img>
</p>

## Install

**Flutter**

`flutter pub add dart_discord_rpc`

**Dart CLI**

`dart pub add dart_discord_rpc`

## Documentation

For integrating Discord Rich Presence into your application or game, you must create an application at [Discord Developer Portal](https://discord.com/developers/applications).

**Initialize the plugin.**

```dart
void main() {
    DiscordRPC.initialize();
    runApp(MyApp());
}
```

**Instantiate class.**

```dart
DiscordRPC rpc = DiscordRPC(
    applicationId: 'APPLICATION_ID',
);
```

**Set or change the user presence.**

```dart
rpc.start(autoRegister: true);
rpc.updatePresence(
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
```

**Clear the user presence.**

```dart
rpc.clearPresence();
```

**Listen to the events.**

```dart
rpc.events.listen((event) {
    if (event is DiscordReady) {
        event.user;
    }
    if (event is DiscordErrored) {
        event.errorCode;
        event.message;
    }
    if (event is DiscordJoinGame) {
        event.joinSecret;
    }
    // Other events.
});
```

There are other features for you to checkout.

## Support

Consider supporting the project by starring the repository or buying me a coffee.

<a href='https://www.buymeacoffee.com/alexmercerind'><img src='https://img.buymeacoffee.com/button-api/?text=Buy me a coffee&emoji=&slug=alexmercerind&button_colour=FFDD00&font_colour=000000&font_family=Cookie&outline_colour=000000&coffee_colour=ffffff'></a>

## License

Copyright (c) 2021 Hitesh Kumar Saini <saini123hitesh@gmail.com>

MIT. Contributions welcomed.

See [COPYRIGHT](https://github.com/alexmercerind/dart_discord_rpc/blob/master/COPYRIGHT) for comprehensive licensing information.

## Platforms

Supported

- Windows
- Linux
