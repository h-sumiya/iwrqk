/// Declares the presence of the user.
/// To update the [DiscordUser] presence, pass the object of this class to [DiscordRPC.updatePresence].
///
/// For showing the user's start time from present, you must pass [DiscordPresence.startTimeStamp] as `DateTime.now().millisecondsSinceEpoch`.
class DiscordPresence {
  /// State of the current presence.
  final String? state;

  /// Details about current presence.
  final String? details;

  /// Start time stamp. Used to show how much time has passed.
  final int? startTimeStamp;

  /// End time stamp. Used to show how much time is left.
  final int? endTimeStamp;

  /// Key of the large image from Discord Developer Portal, to show inside Discord Rich Presence.
  final String? largeImageKey;

  /// String describing the large image.
  final String? largeImageText;

  /// Key of the small image from Discord Developer Portal, to show inside Discord Rich Presence.
  final String? smallImageKey;

  /// String describing the small image.
  final String? smallImageText;

  /// Party ID.
  final String? partyId;

  /// Size of the party.
  final int? partySize;

  /// Maximum size of the party.
  final int? partySizeMax;

  /// Match secret.
  final String? matchSecret;

  /// Join secret.
  final String? joinSecret;

  /// Spectate secret.
  final String? spectateSecret;

  /// Instance.
  final int? instance;

  DiscordPresence(
      {this.state,
      this.details,
      this.startTimeStamp,
      this.endTimeStamp,
      this.largeImageKey,
      this.largeImageText,
      this.smallImageKey,
      this.smallImageText,
      this.partyId,
      this.partySize,
      this.partySizeMax,
      this.matchSecret,
      this.joinSecret,
      this.spectateSecret,
      this.instance});
}
