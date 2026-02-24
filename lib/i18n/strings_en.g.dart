///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	Map<String, String> get locales => {
		'en': 'English',
		'ja': '日本語',
		'zh-CN': '简体中文',
		'zh-TW': '繁體中文',
	};
	late final TranslationsRulesEn rules = TranslationsRulesEn.internal(_root);
	late final TranslationsNavEn nav = TranslationsNavEn.internal(_root);
	late final TranslationsCommonEn common = TranslationsCommonEn.internal(_root);
	late final TranslationsRefreshEn refresh = TranslationsRefreshEn.internal(_root);
	late final TranslationsRecordsEn records = TranslationsRecordsEn.internal(_root);
	late final TranslationsAccountEn account = TranslationsAccountEn.internal(_root);
	late final TranslationsProfileEn profile = TranslationsProfileEn.internal(_root);
	late final TranslationsSortEn sort = TranslationsSortEn.internal(_root);
	late final TranslationsFilterEn filter = TranslationsFilterEn.internal(_root);
	late final TranslationsSearchEn search = TranslationsSearchEn.internal(_root);
	late final TranslationsTimeEn time = TranslationsTimeEn.internal(_root);
	late final TranslationsMediaEn media = TranslationsMediaEn.internal(_root);
	late final TranslationsPlayerEn player = TranslationsPlayerEn.internal(_root);
	late final TranslationsCommentEn comment = TranslationsCommentEn.internal(_root);
	late final TranslationsUserEn user = TranslationsUserEn.internal(_root);
	late final TranslationsFriendEn friend = TranslationsFriendEn.internal(_root);
	late final TranslationsBlockedTagsEn blocked_tags = TranslationsBlockedTagsEn.internal(_root);
	late final TranslationsDownloadEn download = TranslationsDownloadEn.internal(_root);
	late final TranslationsPlaylistEn playlist = TranslationsPlaylistEn.internal(_root);
	late final TranslationsChannelEn channel = TranslationsChannelEn.internal(_root);
	late final TranslationsCreateThreadEn create_thread = TranslationsCreateThreadEn.internal(_root);
	late final TranslationsNotificationsEn notifications = TranslationsNotificationsEn.internal(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn.internal(_root);
	late final TranslationsThemeEn theme = TranslationsThemeEn.internal(_root);
	late final TranslationsColorsEn colors = TranslationsColorsEn.internal(_root);
	late final TranslationsDisplayModeEn display_mode = TranslationsDisplayModeEn.internal(_root);
	late final TranslationsProxyEn proxy = TranslationsProxyEn.internal(_root);
	late final TranslationsMessageEn message = TranslationsMessageEn.internal(_root);
	late final TranslationsErrorEn error = TranslationsErrorEn.internal(_root);
}

// Path: rules
class TranslationsRulesEn {
	TranslationsRulesEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Rules'
	String get title => 'Rules';

	/// en: 'I accept the rules'
	String get accept => 'I accept the rules';

	/// en: 'I agree to have read the rules and will stay up to date with any future rule changes.'
	String get accept_desc => 'I agree to have read the rules and will stay up to date with any future rule changes.';
}

// Path: nav
class TranslationsNavEn {
	TranslationsNavEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Subscriptions'
	String get subscriptions => 'Subscriptions';

	/// en: 'Videos'
	String get videos => 'Videos';

	/// en: 'Images'
	String get images => 'Images';

	/// en: 'Forum'
	String get forum => 'Forum';

	/// en: 'Search'
	String get search => 'Search';
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Video'
	String get video => 'Video';

	/// en: 'Image'
	String get image => 'Image';

	/// en: 'Collapse'
	String get collapse => 'Collapse';

	/// en: 'Expand'
	String get expand => 'Expand';

	/// en: 'Translate'
	String get translate => 'Translate';

	/// en: 'Open'
	String get open => 'Open';
}

// Path: refresh
class TranslationsRefreshEn {
	TranslationsRefreshEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Nothing here'
	String get empty => 'Nothing here';

	/// en: 'Pull to load'
	String get drag_to_load => 'Pull to load';

	/// en: 'Release to load'
	String get release_to_load => 'Release to load';

	/// en: 'Succeeded'
	String get success => 'Succeeded';

	/// en: 'Failed'
	String get failed => 'Failed';

	/// en: 'No more'
	String get no_more => 'No more';

	/// en: 'Last updated at %T'
	String get last_load => 'Last updated at %T';
}

// Path: records
class TranslationsRecordsEn {
	TranslationsRecordsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Select all'
	String get select_all => 'Select all';

	/// en: 'Select inverse'
	String get select_inverse => 'Select inverse';

	/// en: '$num selected'
	String selected_num({required Object num}) => '${num} selected';

	/// en: 'Multiple selection mode'
	String get multiple_selection_mode => 'Multiple selection mode';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Delete all'
	String get delete_all => 'Delete all';
}

// Path: account
class TranslationsAccountEn {
	TranslationsAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Captcha'
	String get captcha => 'Captcha';

	/// en: 'Login'
	String get login => 'Login';

	/// en: 'Logout'
	String get logout => 'Logout';

	/// en: 'Register'
	String get register => 'Register';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Email or username'
	String get email_or_username => 'Email or username';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Forgot password?'
	String get forgot_password => 'Forgot password?';

	/// en: 'You must be logged in to do that.'
	String get require_login => 'You must be logged in to do that.';
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Profile'
	String get profile => 'Profile';

	/// en: 'Follow'
	String get follow => 'Follow';

	/// en: 'Followers'
	String get followers => 'Followers';

	/// en: 'Following'
	String get following => 'Following';

	/// en: 'Nickname'
	String get nickname => 'Nickname';

	/// en: 'Username'
	String get username => 'Username';

	/// en: 'User ID'
	String get user_id => 'User ID';

	/// en: 'Description'
	String get description => 'Description';

	/// en: 'This user prefers to keep an air of mystery around them.'
	String get no_description => 'This user prefers to keep an air of mystery around them.';

	/// en: 'Join date'
	String get join_date => 'Join date';

	/// en: 'Last active time'
	String get last_active_time => 'Last active time';

	/// en: 'Online'
	String get online => 'Online';

	/// en: 'Message'
	String get message => 'Message';

	/// en: 'Guestbook'
	String get guestbook => 'Guestbook';

	/// en: 'View more'
	String get view_more => 'View more';
}

// Path: sort
class TranslationsSortEn {
	TranslationsSortEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Latest'
	String get latest => 'Latest';

	/// en: 'Trending'
	String get trending => 'Trending';

	/// en: 'Popularity'
	String get popularity => 'Popularity';

	/// en: 'Most views'
	String get most_views => 'Most views';

	/// en: 'Most likes'
	String get most_likes => 'Most likes';
}

// Path: filter
class TranslationsFilterEn {
	TranslationsFilterEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'All'
	String get all => 'All';

	/// en: 'Filter'
	String get filter => 'Filter';

	/// en: 'Rating'
	String get rating => 'Rating';

	/// en: 'Tag'
	String get tag => 'Tag';

	/// en: 'Tags'
	String get tags => 'Tags';

	/// en: 'Date'
	String get date => 'Date';

	/// en: 'General'
	String get general => 'General';

	/// en: 'Ecchi'
	String get ecchi => 'Ecchi';

	/// en: 'Select rating'
	String get select_rating => 'Select rating';

	/// en: 'Select year'
	String get select_year => 'Select year';

	/// en: 'Select month'
	String get select_month => 'Select month';
}

// Path: search
class TranslationsSearchEn {
	TranslationsSearchEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Users'
	String get users => 'Users';

	/// en: 'Search'
	String get search => 'Search';

	late final TranslationsSearchHistoryEn history = TranslationsSearchHistoryEn.internal(_root);
}

// Path: time
class TranslationsTimeEn {
	TranslationsTimeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: '$time seconds ago'
	String seconds_ago({required Object time}) => '${time} seconds ago';

	/// en: '$time minutes ago'
	String minutes_ago({required Object time}) => '${time} minutes ago';

	/// en: '$time hours ago'
	String hours_ago({required Object time}) => '${time} hours ago';

	/// en: '$time days ago'
	String days_ago({required Object time}) => '${time} days ago';
}

// Path: media
class TranslationsMediaEn {
	TranslationsMediaEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Private'
	String get private => 'Private';

	/// en: 'Add to playlist'
	String get add_to_playlist => 'Add to playlist';

	/// en: 'External video'
	String get external_video => 'External video';

	/// en: 'Share'
	String get share => 'Share';

	/// en: 'Download'
	String get download => 'Download';

	/// en: 'More from $username'
	String more_from({required Object username}) => 'More from ${username}';

	/// en: 'More like this'
	String get more_like_this => 'More like this';

	/// en: 'Updated at $time'
	String updated_at({required Object time}) => 'Updated at ${time}';

	/// en: 'Detail'
	String get detail => 'Detail';

	/// en: 'Comments'
	String get comments => 'Comments';
}

// Path: player
class TranslationsPlayerEn {
	TranslationsPlayerEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Current: $item'
	String current_item({required Object item}) => 'Current: ${item}';

	/// en: 'Quality'
	String get quality => 'Quality';

	/// en: 'Select quality'
	String get select_quality => 'Select quality';

	/// en: 'Playback speed'
	String get playback_speed => 'Playback speed';

	/// en: 'Select playback speed'
	String get select_playback_speed => 'Select playback speed';

	/// en: 'Aspect ratio'
	String get aspect_ratio => 'Aspect ratio';

	/// en: 'Select aspect ratio'
	String get select_aspect_ratio => 'Select aspect ratio';

	late final TranslationsPlayerAspectRatiosEn aspect_ratios = TranslationsPlayerAspectRatiosEn.internal(_root);

	/// en: '${value}s'
	String seconds({required Object value}) => '${value}s';

	/// en: '2x'
	String get double_speed => '2x';
}

// Path: comment
class TranslationsCommentEn {
	TranslationsCommentEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Comment'
	String get comment => 'Comment';

	/// en: 'Comments'
	String get comments => 'Comments';

	/// en: 'Comment detail'
	String get comment_detail => 'Comment detail';

	/// en: 'Edit comment'
	String get edit_comment => 'Edit comment';

	/// en: 'Delete comment'
	String get delete_comment => 'Delete comment';

	/// en: 'Reply'
	String get reply => 'Reply';

	/// en: '$numReply replies in total'
	String replies_in_total({required Object numReply}) => '${numReply} replies in total';

	/// en: 'Show all $numReply replies'
	String show_all_replies({required Object numReply}) => 'Show all ${numReply} replies';
}

// Path: user
class TranslationsUserEn {
	TranslationsUserEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Following'
	String get following => 'Following';

	/// en: 'History'
	String get history => 'History';

	/// en: 'Blocked Tags'
	String get blocked_tags => 'Blocked Tags';

	/// en: 'Friends'
	String get friends => 'Friends';

	/// en: 'Downloads'
	String get downloads => 'Downloads';

	/// en: 'Favorites'
	String get favorites => 'Favorites';

	/// en: 'Playlists'
	String get playlists => 'Playlists';

	/// en: 'Settings'
	String get settings => 'Settings';

	/// en: 'About'
	String get about => 'About';
}

// Path: friend
class TranslationsFriendEn {
	TranslationsFriendEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Friend Requests'
	String get friend_requests => 'Friend Requests';

	/// en: 'Add friend'
	String get add_friend => 'Add friend';

	/// en: 'Pending'
	String get pending => 'Pending';

	/// en: 'Unfriend'
	String get unfriend => 'Unfriend';

	/// en: 'Accept'
	String get accept => 'Accept';

	/// en: 'Reject'
	String get reject => 'Reject';
}

// Path: blocked_tags
class TranslationsBlockedTagsEn {
	TranslationsBlockedTagsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Add blocked tag'
	String get add_blocked_tag => 'Add blocked tag';

	/// en: 'Blocked tag'
	String get blocked_tag => 'Blocked tag';
}

// Path: download
class TranslationsDownloadEn {
	TranslationsDownloadEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Create download task'
	String get create_download_task => 'Create download task';

	/// en: 'Unknown'
	String get unknown => 'Unknown';

	/// en: 'Enqueued'
	String get enqueued => 'Enqueued';

	/// en: 'Downloading'
	String get downloading => 'Downloading';

	/// en: 'Paused'
	String get paused => 'Paused';

	/// en: 'Finished'
	String get finished => 'Finished';

	/// en: 'Failed'
	String get failed => 'Failed';

	/// en: 'Retry'
	String get retry => 'Retry';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Pause'
	String get pause => 'Pause';

	/// en: 'Resume'
	String get resume => 'Resume';

	/// en: 'Open with'
	String get open_with => 'Open with';

	/// en: 'Jump to detail page'
	String get jump_to_detail => 'Jump to detail page';
}

// Path: playlist
class TranslationsPlaylistEn {
	TranslationsPlaylistEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Playlist title'
	String get title => 'Playlist title';

	/// en: 'Create playlist'
	String get create => 'Create playlist';

	/// en: 'Select playlist'
	String get select => 'Select playlist';

	/// en: 'Edit title'
	String get edit_title => 'Edit title';

	/// en: '$numVideo video'
	String videos_count({required Object numVideo}) => '${numVideo} video';

	/// en: '$numVideo videos'
	String videos_count_plural({required Object numVideo}) => '${numVideo} videos';
}

// Path: channel
class TranslationsChannelEn {
	TranslationsChannelEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Administration'
	String get administration => 'Administration';

	/// en: 'Announcements'
	String get announcements => 'Announcements';

	/// en: 'Feedback'
	String get feedback => 'Feedback';

	/// en: 'Support'
	String get support => 'Support';

	/// en: 'Global'
	String get global => 'Global';

	/// en: 'General'
	String get general => 'General';

	/// en: 'Guides'
	String get guides => 'Guides';

	/// en: 'Questions'
	String get questions => 'Questions';

	/// en: 'Requests'
	String get requests => 'Requests';

	/// en: 'Sharing'
	String get sharing => 'Sharing';

	/// en: '$numThread Threads $numPosts Posts'
	String label({required Object numThread, required Object numPosts}) => '${numThread} Threads ${numPosts} Posts';
}

// Path: create_thread
class TranslationsCreateThreadEn {
	TranslationsCreateThreadEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Create thread'
	String get create_thread => 'Create thread';

	/// en: 'Title'
	String get title => 'Title';

	/// en: 'Content'
	String get content => 'Content';
}

// Path: notifications
class TranslationsNotificationsEn {
	TranslationsNotificationsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'OK'
	String get ok => 'OK';

	/// en: 'Success'
	String get success => 'Success';

	/// en: 'Error'
	String get error => 'Error';

	/// en: 'Loading...'
	String get loading => 'Loading...';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Confirm'
	String get confirm => 'Confirm';

	/// en: 'Apply'
	String get apply => 'Apply';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Appearance'
	String get appearance => 'Appearance';

	/// en: 'Theme'
	String get theme => 'Theme';

	/// en: 'Change the theme of the App'
	String get theme_desc => 'Change the theme of the App';

	/// en: 'Dynamic Color'
	String get dynamic_color => 'Dynamic Color';

	/// en: 'Change the color of the App according to the content'
	String get dynamic_color_desc => 'Change the color of the App according to the content';

	/// en: 'Custom Color'
	String get custom_color => 'Custom Color';

	/// en: 'Customize the color of the App'
	String get custom_color_desc => 'Customize the color of the App';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Change the language of the App'
	String get language_desc => 'Change the language of the App';

	/// en: 'Display Mode'
	String get display_mode => 'Display Mode';

	/// en: 'Change the display mode of the App'
	String get display_mode_desc => 'Change the display mode of the App';

	/// en: 'Work Mode'
	String get work_mode => 'Work Mode';

	/// en: 'Hide all covers of NSFW content'
	String get work_mode_desc => 'Hide all covers of NSFW content';

	/// en: 'Animated preview'
	String get animated_preview => 'Animated preview';

	/// en: 'Show animated video preview on hover or long press (when available)'
	String get animated_preview_desc => 'Show animated video preview on hover or long press (when available)';

	/// en: 'Network'
	String get network => 'Network';

	/// en: 'Enable Proxy'
	String get enable_proxy => 'Enable Proxy';

	/// en: 'Enable proxy for the App'
	String get enable_proxy_desc => 'Enable proxy for the App';

	/// en: 'Proxy'
	String get proxy => 'Proxy';

	/// en: 'Set the host and port of the proxy'
	String get proxy_desc => 'Set the host and port of the proxy';

	/// en: 'Player'
	String get player => 'Player';

	/// en: 'Autoplay'
	String get autoplay => 'Autoplay';

	/// en: 'Autoplay video when opening a video page'
	String get autoplay_desc => 'Autoplay video when opening a video page';

	/// en: 'Background Play'
	String get background_play => 'Background Play';

	/// en: 'Allow the App to play video in the background'
	String get background_play_desc => 'Allow the App to play video in the background';

	/// en: 'Discord Rich Presence'
	String get discord_rich_presence => 'Discord Rich Presence';

	/// en: 'Show app status and current playback on Discord'
	String get discord_rich_presence_desc => 'Show app status and current playback on Discord';

	/// en: 'Download'
	String get download => 'Download';

	/// en: 'Download Path'
	String get download_path => 'Download Path';

	/// en: 'Allow Media Scan'
	String get allow_media_scan => 'Allow Media Scan';

	/// en: 'Allow media scanner to read downloaded media files'
	String get allow_media_scan_desc => 'Allow media scanner to read downloaded media files';

	/// en: 'Logging'
	String get logging => 'Logging';

	/// en: 'Enable Logging'
	String get enable_logging => 'Enable Logging';

	/// en: 'Enable logging for the App'
	String get enable_logging_desc => 'Enable logging for the App';

	/// en: 'Clear Log'
	String get clear_log => 'Clear Log';

	/// en: 'Current log size: $size'
	String clear_log_desc({required Object size}) => 'Current log size: ${size}';

	/// en: 'Enable Verbose Logging'
	String get enable_verbose_logging => 'Enable Verbose Logging';

	/// en: 'Record more detailed logs'
	String get enable_verbose_logging_desc => 'Record more detailed logs';

	/// en: 'About'
	String get about => 'About';

	/// en: 'Check Update'
	String get check_update => 'Check Update';

	/// en: 'Check if there is a new version available'
	String get check_update_desc => 'Check if there is a new version available';

	/// en: 'Third Party License'
	String get third_party_license => 'Third Party License';

	/// en: 'View the license of third party libraries'
	String get third_party_license_desc => 'View the license of third party libraries';
}

// Path: theme
class TranslationsThemeEn {
	TranslationsThemeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'System'
	String get system => 'System';

	/// en: 'Light'
	String get light => 'Light';

	/// en: 'Dark'
	String get dark => 'Dark';
}

// Path: colors
class TranslationsColorsEn {
	TranslationsColorsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Pink'
	String get pink => 'Pink';

	/// en: 'Red'
	String get red => 'Red';

	/// en: 'Orange'
	String get orange => 'Orange';

	/// en: 'Amber'
	String get amber => 'Amber';

	/// en: 'Yellow'
	String get yellow => 'Yellow';

	/// en: 'Lime'
	String get lime => 'Lime';

	/// en: 'Light Green'
	String get lightGreen => 'Light Green';

	/// en: 'Green'
	String get green => 'Green';

	/// en: 'Teal'
	String get teal => 'Teal';

	/// en: 'Cyan'
	String get cyan => 'Cyan';

	/// en: 'Light Blue'
	String get lightBlue => 'Light Blue';

	/// en: 'Blue'
	String get blue => 'Blue';

	/// en: 'Indigo'
	String get indigo => 'Indigo';

	/// en: 'Purple'
	String get purple => 'Purple';

	/// en: 'Deep Purple'
	String get deepPurple => 'Deep Purple';

	/// en: 'Blue Grey'
	String get blueGrey => 'Blue Grey';

	/// en: 'Brown'
	String get brown => 'Brown';

	/// en: 'Grey'
	String get grey => 'Grey';
}

// Path: display_mode
class TranslationsDisplayModeEn {
	TranslationsDisplayModeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No available display mode'
	String get no_available => 'No available display mode';

	/// en: 'Auto'
	String get auto => 'Auto';

	/// en: 'System'
	String get system => 'System';
}

// Path: proxy
class TranslationsProxyEn {
	TranslationsProxyEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Host'
	String get host => 'Host';

	/// en: 'Port'
	String get port => 'Port';
}

// Path: message
class TranslationsMessageEn {
	TranslationsMessageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Press again to exit the App'
	String get exit_app => 'Press again to exit the App';

	/// en: 'Are you sure to do that?'
	String get are_you_sure_to_do_that => 'Are you sure to do that?';

	/// en: 'Restart the App to apply the changes.'
	String get restart_required => 'Restart the App to apply the changes.';

	/// en: 'Please type the host'
	String get please_type_host => 'Please type the host';

	/// en: 'Please type the port'
	String get please_type_port => 'Please type the port';

	late final TranslationsMessageAccountEn account = TranslationsMessageAccountEn.internal(_root);
	late final TranslationsMessageCommentEn comment = TranslationsMessageCommentEn.internal(_root);
	late final TranslationsMessageCreateThreadEn create_thread = TranslationsMessageCreateThreadEn.internal(_root);
	late final TranslationsMessageBlockedTagsEn blocked_tags = TranslationsMessageBlockedTagsEn.internal(_root);
	late final TranslationsMessagePlaylistEn playlist = TranslationsMessagePlaylistEn.internal(_root);
	late final TranslationsMessageDownloadEn download = TranslationsMessageDownloadEn.internal(_root);
	late final TranslationsMessageUpdateEn update = TranslationsMessageUpdateEn.internal(_root);
}

// Path: error
class TranslationsErrorEn {
	TranslationsErrorEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Load failed, click to retry.'
	String get retry => 'Load failed, click to retry.';

	/// en: 'Failed to fetch video links.'
	String get fetch_failed => 'Failed to fetch video links.';

	/// en: 'Failed to fetch user info.'
	String get fetch_user_info_failed => 'Failed to fetch user info.';

	/// en: 'Invalid path.'
	String get invalid_path => 'Invalid path.';

	/// en: 'Intercept app exit'
	String get intercept_app_exit => 'Intercept app exit';

	late final TranslationsErrorAccountEn account = TranslationsErrorAccountEn.internal(_root);
}

// Path: search.history
class TranslationsSearchHistoryEn {
	TranslationsSearchHistoryEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delete All'
	String get delete => 'Delete All';
}

// Path: player.aspect_ratios
class TranslationsPlayerAspectRatiosEn {
	TranslationsPlayerAspectRatiosEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Contain'
	String get contain => 'Contain';

	/// en: 'Cover'
	String get cover => 'Cover';

	/// en: 'Fill'
	String get fill => 'Fill';

	/// en: 'Fit height'
	String get fit_height => 'Fit height';

	/// en: 'Fit width'
	String get fit_width => 'Fit width';

	/// en: 'Scale down'
	String get scale_down => 'Scale down';
}

// Path: message.account
class TranslationsMessageAccountEn {
	TranslationsMessageAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Login success.'
	String get login_success => 'Login success.';

	/// en: 'Register success, further instructions have been sent to your email.'
	String get register_success => 'Register success, further instructions have been sent to your email.';

	/// en: 'Password must be longer than 6 characters'
	String get login_password_longer_than_6 => 'Password must be longer than 6 characters';

	/// en: 'Please type your email'
	String get please_type_email => 'Please type your email';

	/// en: 'Please type your email or username'
	String get please_type_email_or_username => 'Please type your email or username';

	/// en: 'Please type a valid email'
	String get please_type_valid_email => 'Please type a valid email';

	/// en: 'Please type your password'
	String get please_type_password => 'Please type your password';

	/// en: 'Please type the captcha'
	String get please_type_captcha => 'Please type the captcha';
}

// Path: message.comment
class TranslationsMessageCommentEn {
	TranslationsMessageCommentEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Content can not be empty.'
	String get content_empty => 'Content can not be empty.';

	/// en: 'Content can not be longer than 1000 characters.'
	String get content_too_long => 'Content can not be longer than 1000 characters.';

	/// en: 'Reply sent.'
	String get sent => 'Reply sent.';
}

// Path: message.create_thread
class TranslationsMessageCreateThreadEn {
	TranslationsMessageCreateThreadEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Title can not be empty.'
	String get title_empty => 'Title can not be empty.';

	/// en: 'Title is too long.'
	String get title_too_long => 'Title is too long.';

	/// en: 'Content can not be empty.'
	String get content_empty => 'Content can not be empty.';

	/// en: 'Content can not be longer than 20000 characters.'
	String get content_too_long => 'Content can not be longer than 20000 characters.';

	/// en: 'Thread Created.'
	String get created => 'Thread Created.';
}

// Path: message.blocked_tags
class TranslationsMessageBlockedTagsEn {
	TranslationsMessageBlockedTagsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Are you sure to save the blocked tags?'
	String get save_confirm => 'Are you sure to save the blocked tags?';

	/// en: 'Blocked tags saved.'
	String get saved => 'Blocked tags saved.';

	/// en: 'Blocked tags reached limit.'
	String get reached_limit => 'Blocked tags reached limit.';
}

// Path: message.playlist
class TranslationsMessagePlaylistEn {
	TranslationsMessagePlaylistEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Playlist title can not be empty.'
	String get empty_playlist_title => 'Playlist title can not be empty.';

	/// en: 'Playlist created.'
	String get playlist_created => 'Playlist created.';

	/// en: 'Playlist title edited.'
	String get playlist_title_edited => 'Playlist title edited.';
}

// Path: message.download
class TranslationsMessageDownloadEn {
	TranslationsMessageDownloadEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'No storage permission provided.'
	String get no_provide_storage_permission => 'No storage permission provided.';

	/// en: 'Download task already exists.'
	String get task_already_exists => 'Download task already exists.';

	/// en: 'Download task created.'
	String get task_created => 'Download task created.';

	/// en: 'Maximum simultaneous download reached.'
	String get maximum_simultaneous_download_reached => 'Maximum simultaneous download reached.';
}

// Path: message.update
class TranslationsMessageUpdateEn {
	TranslationsMessageUpdateEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Failed to check update.'
	String get check_update_failed => 'Failed to check update.';

	/// en: 'Update available'
	String get update_available => 'Update available';

	/// en: 'Already the latest version'
	String get already_latest_version => 'Already the latest version';

	/// en: 'Current version: $version'
	String current_version({required Object version}) => 'Current version: ${version}';

	/// en: 'Latest version: $version'
	String latest_version({required Object version}) => 'Latest version: ${version}';

	/// en: 'View update'
	String get view_update => 'View update';
}

// Path: error.account
class TranslationsErrorAccountEn {
	TranslationsErrorAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Invalid email or password.'
	String get invalid_login => 'Invalid email or password.';

	/// en: 'Invalid host.'
	String get invalid_host => 'Invalid host.';

	/// en: 'Invalid captcha.'
	String get invalid_captcha => 'Invalid captcha.';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'locales.en' => 'English',
			'locales.ja' => '日本語',
			'locales.zh-CN' => '简体中文',
			'locales.zh-TW' => '繁體中文',
			'rules.title' => 'Rules',
			'rules.accept' => 'I accept the rules',
			'rules.accept_desc' => 'I agree to have read the rules and will stay up to date with any future rule changes.',
			'nav.subscriptions' => 'Subscriptions',
			'nav.videos' => 'Videos',
			'nav.images' => 'Images',
			'nav.forum' => 'Forum',
			'nav.search' => 'Search',
			'common.video' => 'Video',
			'common.image' => 'Image',
			'common.collapse' => 'Collapse',
			'common.expand' => 'Expand',
			'common.translate' => 'Translate',
			'common.open' => 'Open',
			'refresh.empty' => 'Nothing here',
			'refresh.drag_to_load' => 'Pull to load',
			'refresh.release_to_load' => 'Release to load',
			'refresh.success' => 'Succeeded',
			'refresh.failed' => 'Failed',
			'refresh.no_more' => 'No more',
			'refresh.last_load' => 'Last updated at %T',
			'records.select_all' => 'Select all',
			'records.select_inverse' => 'Select inverse',
			'records.selected_num' => ({required Object num}) => '${num} selected',
			'records.multiple_selection_mode' => 'Multiple selection mode',
			'records.delete' => 'Delete',
			'records.delete_all' => 'Delete all',
			'account.captcha' => 'Captcha',
			'account.login' => 'Login',
			'account.logout' => 'Logout',
			'account.register' => 'Register',
			'account.email' => 'Email',
			'account.email_or_username' => 'Email or username',
			'account.password' => 'Password',
			'account.forgot_password' => 'Forgot password?',
			'account.require_login' => 'You must be logged in to do that.',
			'profile.profile' => 'Profile',
			'profile.follow' => 'Follow',
			'profile.followers' => 'Followers',
			'profile.following' => 'Following',
			'profile.nickname' => 'Nickname',
			'profile.username' => 'Username',
			'profile.user_id' => 'User ID',
			'profile.description' => 'Description',
			'profile.no_description' => 'This user prefers to keep an air of mystery around them.',
			'profile.join_date' => 'Join date',
			'profile.last_active_time' => 'Last active time',
			'profile.online' => 'Online',
			'profile.message' => 'Message',
			'profile.guestbook' => 'Guestbook',
			'profile.view_more' => 'View more',
			'sort.latest' => 'Latest',
			'sort.trending' => 'Trending',
			'sort.popularity' => 'Popularity',
			'sort.most_views' => 'Most views',
			'sort.most_likes' => 'Most likes',
			'filter.all' => 'All',
			'filter.filter' => 'Filter',
			'filter.rating' => 'Rating',
			'filter.tag' => 'Tag',
			'filter.tags' => 'Tags',
			'filter.date' => 'Date',
			'filter.general' => 'General',
			'filter.ecchi' => 'Ecchi',
			'filter.select_rating' => 'Select rating',
			'filter.select_year' => 'Select year',
			'filter.select_month' => 'Select month',
			'search.users' => 'Users',
			'search.search' => 'Search',
			'search.history.delete' => 'Delete All',
			'time.seconds_ago' => ({required Object time}) => '${time} seconds ago',
			'time.minutes_ago' => ({required Object time}) => '${time} minutes ago',
			'time.hours_ago' => ({required Object time}) => '${time} hours ago',
			'time.days_ago' => ({required Object time}) => '${time} days ago',
			'media.private' => 'Private',
			'media.add_to_playlist' => 'Add to playlist',
			'media.external_video' => 'External video',
			'media.share' => 'Share',
			'media.download' => 'Download',
			'media.more_from' => ({required Object username}) => 'More from ${username}',
			'media.more_like_this' => 'More like this',
			'media.updated_at' => ({required Object time}) => 'Updated at ${time}',
			'media.detail' => 'Detail',
			'media.comments' => 'Comments',
			'player.current_item' => ({required Object item}) => 'Current: ${item}',
			'player.quality' => 'Quality',
			'player.select_quality' => 'Select quality',
			'player.playback_speed' => 'Playback speed',
			'player.select_playback_speed' => 'Select playback speed',
			'player.aspect_ratio' => 'Aspect ratio',
			'player.select_aspect_ratio' => 'Select aspect ratio',
			'player.aspect_ratios.contain' => 'Contain',
			'player.aspect_ratios.cover' => 'Cover',
			'player.aspect_ratios.fill' => 'Fill',
			'player.aspect_ratios.fit_height' => 'Fit height',
			'player.aspect_ratios.fit_width' => 'Fit width',
			'player.aspect_ratios.scale_down' => 'Scale down',
			'player.seconds' => ({required Object value}) => '${value}s',
			'player.double_speed' => '2x',
			'comment.comment' => 'Comment',
			'comment.comments' => 'Comments',
			'comment.comment_detail' => 'Comment detail',
			'comment.edit_comment' => 'Edit comment',
			'comment.delete_comment' => 'Delete comment',
			'comment.reply' => 'Reply',
			'comment.replies_in_total' => ({required Object numReply}) => '${numReply} replies in total',
			'comment.show_all_replies' => ({required Object numReply}) => 'Show all ${numReply} replies',
			'user.following' => 'Following',
			'user.history' => 'History',
			'user.blocked_tags' => 'Blocked Tags',
			'user.friends' => 'Friends',
			'user.downloads' => 'Downloads',
			'user.favorites' => 'Favorites',
			'user.playlists' => 'Playlists',
			'user.settings' => 'Settings',
			'user.about' => 'About',
			'friend.friend_requests' => 'Friend Requests',
			'friend.add_friend' => 'Add friend',
			'friend.pending' => 'Pending',
			'friend.unfriend' => 'Unfriend',
			'friend.accept' => 'Accept',
			'friend.reject' => 'Reject',
			'blocked_tags.add_blocked_tag' => 'Add blocked tag',
			'blocked_tags.blocked_tag' => 'Blocked tag',
			'download.create_download_task' => 'Create download task',
			'download.unknown' => 'Unknown',
			'download.enqueued' => 'Enqueued',
			'download.downloading' => 'Downloading',
			'download.paused' => 'Paused',
			'download.finished' => 'Finished',
			'download.failed' => 'Failed',
			'download.retry' => 'Retry',
			'download.delete' => 'Delete',
			'download.pause' => 'Pause',
			'download.resume' => 'Resume',
			'download.open_with' => 'Open with',
			'download.jump_to_detail' => 'Jump to detail page',
			'playlist.title' => 'Playlist title',
			'playlist.create' => 'Create playlist',
			'playlist.select' => 'Select playlist',
			'playlist.edit_title' => 'Edit title',
			'playlist.videos_count' => ({required Object numVideo}) => '${numVideo} video',
			'playlist.videos_count_plural' => ({required Object numVideo}) => '${numVideo} videos',
			'channel.administration' => 'Administration',
			'channel.announcements' => 'Announcements',
			'channel.feedback' => 'Feedback',
			'channel.support' => 'Support',
			'channel.global' => 'Global',
			'channel.general' => 'General',
			'channel.guides' => 'Guides',
			'channel.questions' => 'Questions',
			'channel.requests' => 'Requests',
			'channel.sharing' => 'Sharing',
			'channel.label' => ({required Object numThread, required Object numPosts}) => '${numThread} Threads ${numPosts} Posts',
			'create_thread.create_thread' => 'Create thread',
			'create_thread.title' => 'Title',
			'create_thread.content' => 'Content',
			'notifications.ok' => 'OK',
			'notifications.success' => 'Success',
			'notifications.error' => 'Error',
			'notifications.loading' => 'Loading...',
			'notifications.cancel' => 'Cancel',
			'notifications.confirm' => 'Confirm',
			'notifications.apply' => 'Apply',
			'settings.appearance' => 'Appearance',
			'settings.theme' => 'Theme',
			'settings.theme_desc' => 'Change the theme of the App',
			'settings.dynamic_color' => 'Dynamic Color',
			'settings.dynamic_color_desc' => 'Change the color of the App according to the content',
			'settings.custom_color' => 'Custom Color',
			'settings.custom_color_desc' => 'Customize the color of the App',
			'settings.language' => 'Language',
			'settings.language_desc' => 'Change the language of the App',
			'settings.display_mode' => 'Display Mode',
			'settings.display_mode_desc' => 'Change the display mode of the App',
			'settings.work_mode' => 'Work Mode',
			'settings.work_mode_desc' => 'Hide all covers of NSFW content',
			'settings.animated_preview' => 'Animated preview',
			'settings.animated_preview_desc' => 'Show animated video preview on hover or long press (when available)',
			'settings.network' => 'Network',
			'settings.enable_proxy' => 'Enable Proxy',
			'settings.enable_proxy_desc' => 'Enable proxy for the App',
			'settings.proxy' => 'Proxy',
			'settings.proxy_desc' => 'Set the host and port of the proxy',
			'settings.player' => 'Player',
			'settings.autoplay' => 'Autoplay',
			'settings.autoplay_desc' => 'Autoplay video when opening a video page',
			'settings.background_play' => 'Background Play',
			'settings.background_play_desc' => 'Allow the App to play video in the background',
			'settings.discord_rich_presence' => 'Discord Rich Presence',
			'settings.discord_rich_presence_desc' => 'Show app status and current playback on Discord',
			'settings.download' => 'Download',
			'settings.download_path' => 'Download Path',
			'settings.allow_media_scan' => 'Allow Media Scan',
			'settings.allow_media_scan_desc' => 'Allow media scanner to read downloaded media files',
			'settings.logging' => 'Logging',
			'settings.enable_logging' => 'Enable Logging',
			'settings.enable_logging_desc' => 'Enable logging for the App',
			'settings.clear_log' => 'Clear Log',
			'settings.clear_log_desc' => ({required Object size}) => 'Current log size: ${size}',
			'settings.enable_verbose_logging' => 'Enable Verbose Logging',
			'settings.enable_verbose_logging_desc' => 'Record more detailed logs',
			'settings.about' => 'About',
			'settings.check_update' => 'Check Update',
			'settings.check_update_desc' => 'Check if there is a new version available',
			'settings.third_party_license' => 'Third Party License',
			'settings.third_party_license_desc' => 'View the license of third party libraries',
			'theme.system' => 'System',
			'theme.light' => 'Light',
			'theme.dark' => 'Dark',
			'colors.pink' => 'Pink',
			'colors.red' => 'Red',
			'colors.orange' => 'Orange',
			'colors.amber' => 'Amber',
			'colors.yellow' => 'Yellow',
			'colors.lime' => 'Lime',
			'colors.lightGreen' => 'Light Green',
			'colors.green' => 'Green',
			'colors.teal' => 'Teal',
			'colors.cyan' => 'Cyan',
			'colors.lightBlue' => 'Light Blue',
			'colors.blue' => 'Blue',
			'colors.indigo' => 'Indigo',
			'colors.purple' => 'Purple',
			'colors.deepPurple' => 'Deep Purple',
			'colors.blueGrey' => 'Blue Grey',
			'colors.brown' => 'Brown',
			'colors.grey' => 'Grey',
			'display_mode.no_available' => 'No available display mode',
			'display_mode.auto' => 'Auto',
			'display_mode.system' => 'System',
			'proxy.host' => 'Host',
			'proxy.port' => 'Port',
			'message.exit_app' => 'Press again to exit the App',
			'message.are_you_sure_to_do_that' => 'Are you sure to do that?',
			'message.restart_required' => 'Restart the App to apply the changes.',
			'message.please_type_host' => 'Please type the host',
			'message.please_type_port' => 'Please type the port',
			'message.account.login_success' => 'Login success.',
			'message.account.register_success' => 'Register success, further instructions have been sent to your email.',
			'message.account.login_password_longer_than_6' => 'Password must be longer than 6 characters',
			'message.account.please_type_email' => 'Please type your email',
			'message.account.please_type_email_or_username' => 'Please type your email or username',
			'message.account.please_type_valid_email' => 'Please type a valid email',
			'message.account.please_type_password' => 'Please type your password',
			'message.account.please_type_captcha' => 'Please type the captcha',
			'message.comment.content_empty' => 'Content can not be empty.',
			'message.comment.content_too_long' => 'Content can not be longer than 1000 characters.',
			'message.comment.sent' => 'Reply sent.',
			'message.create_thread.title_empty' => 'Title can not be empty.',
			'message.create_thread.title_too_long' => 'Title is too long.',
			'message.create_thread.content_empty' => 'Content can not be empty.',
			'message.create_thread.content_too_long' => 'Content can not be longer than 20000 characters.',
			'message.create_thread.created' => 'Thread Created.',
			'message.blocked_tags.save_confirm' => 'Are you sure to save the blocked tags?',
			'message.blocked_tags.saved' => 'Blocked tags saved.',
			'message.blocked_tags.reached_limit' => 'Blocked tags reached limit.',
			'message.playlist.empty_playlist_title' => 'Playlist title can not be empty.',
			'message.playlist.playlist_created' => 'Playlist created.',
			'message.playlist.playlist_title_edited' => 'Playlist title edited.',
			'message.download.no_provide_storage_permission' => 'No storage permission provided.',
			'message.download.task_already_exists' => 'Download task already exists.',
			'message.download.task_created' => 'Download task created.',
			'message.download.maximum_simultaneous_download_reached' => 'Maximum simultaneous download reached.',
			'message.update.check_update_failed' => 'Failed to check update.',
			'message.update.update_available' => 'Update available',
			'message.update.already_latest_version' => 'Already the latest version',
			'message.update.current_version' => ({required Object version}) => 'Current version: ${version}',
			'message.update.latest_version' => ({required Object version}) => 'Latest version: ${version}',
			'message.update.view_update' => 'View update',
			'error.retry' => 'Load failed, click to retry.',
			'error.fetch_failed' => 'Failed to fetch video links.',
			'error.fetch_user_info_failed' => 'Failed to fetch user info.',
			'error.invalid_path' => 'Invalid path.',
			'error.intercept_app_exit' => 'Intercept app exit',
			'error.account.invalid_login' => 'Invalid email or password.',
			'error.account.invalid_host' => 'Invalid host.',
			'error.account.invalid_captcha' => 'Invalid captcha.',
			_ => null,
		};
	}
}
