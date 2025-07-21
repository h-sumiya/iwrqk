///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
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
	String get title => 'Rules';
	String get accept => 'I accept the rules';
	String get accept_desc => 'I agree to have read the rules and will stay up to date with any future rule changes.';
}

// Path: nav
class TranslationsNavEn {
	TranslationsNavEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get subscriptions => 'Subscriptions';
	String get videos => 'Videos';
	String get images => 'Images';
	String get forum => 'Forum';
	String get search => 'Search';
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get video => 'Video';
	String get image => 'Image';
	String get collapse => 'Collapse';
	String get expand => 'Expand';
	String get translate => 'Translate';
	String get open => 'Open';
}

// Path: refresh
class TranslationsRefreshEn {
	TranslationsRefreshEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get empty => 'Nothing here';
	String get drag_to_load => 'Pull to load';
	String get release_to_load => 'Release to load';
	String get success => 'Succeeded';
	String get failed => 'Failed';
	String get no_more => 'No more';
	String get last_load => 'Last updated at %T';
}

// Path: records
class TranslationsRecordsEn {
	TranslationsRecordsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get select_all => 'Select all';
	String get select_inverse => 'Select inverse';
	String selected_num({required Object num}) => '${num} selected';
	String get multiple_selection_mode => 'Multiple selection mode';
	String get delete => 'Delete';
	String get delete_all => 'Delete all';
}

// Path: account
class TranslationsAccountEn {
	TranslationsAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get captcha => 'Captcha';
	String get login => 'Login';
	String get logout => 'Logout';
	String get register => 'Register';
	String get email => 'Email';
	String get email_or_username => 'Email or username';
	String get password => 'Password';
	String get forgot_password => 'Forgot password?';
	String get require_login => 'You must be logged in to do that.';
}

// Path: profile
class TranslationsProfileEn {
	TranslationsProfileEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get profile => 'Profile';
	String get follow => 'Follow';
	String get followers => 'Followers';
	String get following => 'Following';
	String get nickname => 'Nickname';
	String get username => 'Username';
	String get user_id => 'User ID';
	String get description => 'Description';
	String get no_description => 'This user prefers to keep an air of mystery around them.';
	String get join_date => 'Join date';
	String get last_active_time => 'Last active time';
	String get online => 'Online';
	String get message => 'Message';
	String get guestbook => 'Guestbook';
	String get view_more => 'View more';
}

// Path: sort
class TranslationsSortEn {
	TranslationsSortEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get latest => 'Latest';
	String get trending => 'Trending';
	String get popularity => 'Popularity';
	String get most_views => 'Most views';
	String get most_likes => 'Most likes';
}

// Path: filter
class TranslationsFilterEn {
	TranslationsFilterEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get all => 'All';
	String get filter => 'Filter';
	String get rating => 'Rating';
	String get tag => 'Tag';
	String get tags => 'Tags';
	String get date => 'Date';
	String get general => 'General';
	String get ecchi => 'Ecchi';
	String get select_rating => 'Select rating';
	String get select_year => 'Select year';
	String get select_month => 'Select month';
}

// Path: search
class TranslationsSearchEn {
	TranslationsSearchEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get users => 'Users';
	String get search => 'Search';
	late final TranslationsSearchHistoryEn history = TranslationsSearchHistoryEn.internal(_root);
}

// Path: time
class TranslationsTimeEn {
	TranslationsTimeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String seconds_ago({required Object time}) => '${time} seconds ago';
	String minutes_ago({required Object time}) => '${time} minutes ago';
	String hours_ago({required Object time}) => '${time} hours ago';
	String days_ago({required Object time}) => '${time} days ago';
}

// Path: media
class TranslationsMediaEn {
	TranslationsMediaEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get private => 'Private';
	String get add_to_playlist => 'Add to playlist';
	String get external_video => 'External video';
	String get share => 'Share';
	String get download => 'Download';
	String more_from({required Object username}) => 'More from ${username}';
	String get more_like_this => 'More like this';
	String updated_at({required Object time}) => 'Updated at ${time}';
}

// Path: player
class TranslationsPlayerEn {
	TranslationsPlayerEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String current_item({required Object item}) => 'Current: ${item}';
	String get quality => 'Quality';
	String get select_quality => 'Select quality';
	String get playback_speed => 'Playback speed';
	String get select_playback_speed => 'Select playback speed';
	String get aspect_ratio => 'Aspect ratio';
	String get select_aspect_ratio => 'Select aspect ratio';
	late final TranslationsPlayerAspectRatiosEn aspect_ratios = TranslationsPlayerAspectRatiosEn.internal(_root);
	String seconds({required Object value}) => '${value}s';
	String get double_speed => '2x';
}

// Path: comment
class TranslationsCommentEn {
	TranslationsCommentEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get comment => 'Comment';
	String get comments => 'Comments';
	String get comment_detail => 'Comment detail';
	String get edit_comment => 'Edit comment';
	String get delete_comment => 'Delete comment';
	String get reply => 'Reply';
	String replies_in_total({required Object numReply}) => '${numReply} replies in total';
	String show_all_replies({required Object numReply}) => 'Show all ${numReply} replies';
}

// Path: user
class TranslationsUserEn {
	TranslationsUserEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get following => 'Following';
	String get history => 'History';
	String get blocked_tags => 'Blocked Tags';
	String get friends => 'Friends';
	String get downloads => 'Downloads';
	String get favorites => 'Favorites';
	String get playlists => 'Playlists';
	String get settings => 'Settings';
	String get about => 'About';
}

// Path: friend
class TranslationsFriendEn {
	TranslationsFriendEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get friend_requests => 'Friend Requests';
	String get add_friend => 'Add friend';
	String get pending => 'Pending';
	String get unfriend => 'Unfriend';
	String get accept => 'Accept';
	String get reject => 'Reject';
}

// Path: blocked_tags
class TranslationsBlockedTagsEn {
	TranslationsBlockedTagsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get add_blocked_tag => 'Add blocked tag';
	String get blocked_tag => 'Blocked tag';
}

// Path: download
class TranslationsDownloadEn {
	TranslationsDownloadEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get create_download_task => 'Create download task';
	String get unknown => 'Unknown';
	String get enqueued => 'Enqueued';
	String get downloading => 'Downloading';
	String get paused => 'Paused';
	String get finished => 'Finished';
	String get failed => 'Failed';
	String get retry => 'Retry';
	String get delete => 'Delete';
	String get pause => 'Pause';
	String get resume => 'Resume';
	String get open_with => 'Open with';
	String get jump_to_detail => 'Jump to detail page';
}

// Path: playlist
class TranslationsPlaylistEn {
	TranslationsPlaylistEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Playlist title';
	String get create => 'Create playlist';
	String get select => 'Select playlist';
	String get edit_title => 'Edit title';
	String videos_count({required Object numVideo}) => '${numVideo} video';
	String videos_count_plural({required Object numVideo}) => '${numVideo} videos';
}

// Path: channel
class TranslationsChannelEn {
	TranslationsChannelEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get administration => 'Administration';
	String get announcements => 'Announcements';
	String get feedback => 'Feedback';
	String get support => 'Support';
	String get global => 'Global';
	String get general => 'General';
	String get guides => 'Guides';
	String get questions => 'Questions';
	String get requests => 'Requests';
	String get sharing => 'Sharing';
	String label({required Object numThread, required Object numPosts}) => '${numThread} Threads ${numPosts} Posts';
}

// Path: create_thread
class TranslationsCreateThreadEn {
	TranslationsCreateThreadEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get create_thread => 'Create thread';
	String get title => 'Title';
	String get content => 'Content';
}

// Path: notifications
class TranslationsNotificationsEn {
	TranslationsNotificationsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ok => 'OK';
	String get success => 'Success';
	String get error => 'Error';
	String get loading => 'Loading...';
	String get cancel => 'Cancel';
	String get confirm => 'Confirm';
	String get apply => 'Apply';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get appearance => 'Appearance';
	String get theme => 'Theme';
	String get theme_desc => 'Change the theme of the App';
	String get dynamic_color => 'Dynamic Color';
	String get dynamic_color_desc => 'Change the color of the App according to the content';
	String get custom_color => 'Custom Color';
	String get custom_color_desc => 'Customize the color of the App';
	String get language => 'Language';
	String get language_desc => 'Change the language of the App';
	String get display_mode => 'Display Mode';
	String get display_mode_desc => 'Change the display mode of the App';
	String get work_mode => 'Work Mode';
	String get work_mode_desc => 'Hide all covers of NSFW content';
	String get network => 'Network';
	String get enable_proxy => 'Enable Proxy';
	String get enable_proxy_desc => 'Enable proxy for the App';
	String get proxy => 'Proxy';
	String get proxy_desc => 'Set the host and port of the proxy';
	String get player => 'Player';
	String get autoplay => 'Autoplay';
	String get autoplay_desc => 'Autoplay video when opening a video page';
	String get background_play => 'Background Play';
	String get background_play_desc => 'Allow the App to play video in the background';
	String get download => 'Download';
	String get download_path => 'Download Path';
	String get allow_media_scan => 'Allow Media Scan';
	String get allow_media_scan_desc => 'Allow media scanner to read downloaded media files';
	String get logging => 'Logging';
	String get enable_logging => 'Enable Logging';
	String get enable_logging_desc => 'Enable logging for the App';
	String get clear_log => 'Clear Log';
	String clear_log_desc({required Object size}) => 'Current log size: ${size}';
	String get enable_verbose_logging => 'Enable Verbose Logging';
	String get enable_verbose_logging_desc => 'Record more detailed logs';
	String get about => 'About';
	String get check_update => 'Check Update';
	String get check_update_desc => 'Check if there is a new version available';
	String get third_party_license => 'Third Party License';
	String get third_party_license_desc => 'View the license of third party libraries';
}

// Path: theme
class TranslationsThemeEn {
	TranslationsThemeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get system => 'System';
	String get light => 'Light';
	String get dark => 'Dark';
}

// Path: colors
class TranslationsColorsEn {
	TranslationsColorsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get pink => 'Pink';
	String get red => 'Red';
	String get orange => 'Orange';
	String get amber => 'Amber';
	String get yellow => 'Yellow';
	String get lime => 'Lime';
	String get lightGreen => 'Light Green';
	String get green => 'Green';
	String get teal => 'Teal';
	String get cyan => 'Cyan';
	String get lightBlue => 'Light Blue';
	String get blue => 'Blue';
	String get indigo => 'Indigo';
	String get purple => 'Purple';
	String get deepPurple => 'Deep Purple';
	String get blueGrey => 'Blue Grey';
	String get brown => 'Brown';
	String get grey => 'Grey';
}

// Path: display_mode
class TranslationsDisplayModeEn {
	TranslationsDisplayModeEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get no_available => 'No available display mode';
	String get auto => 'Auto';
	String get system => 'System';
}

// Path: proxy
class TranslationsProxyEn {
	TranslationsProxyEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get host => 'Host';
	String get port => 'Port';
}

// Path: message
class TranslationsMessageEn {
	TranslationsMessageEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get exit_app => 'Press again to exit the App';
	String get are_you_sure_to_do_that => 'Are you sure to do that?';
	String get restart_required => 'Restart the App to apply the changes.';
	String get please_type_host => 'Please type the host';
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
	String get retry => 'Load failed, click to retry.';
	String get fetch_failed => 'Failed to fetch video links.';
	String get fetch_user_info_failed => 'Failed to fetch user info.';
	String get invalid_path => 'Invalid path.';
	late final TranslationsErrorAccountEn account = TranslationsErrorAccountEn.internal(_root);
}

// Path: search.history
class TranslationsSearchHistoryEn {
	TranslationsSearchHistoryEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get delete => 'Delete All';
}

// Path: player.aspect_ratios
class TranslationsPlayerAspectRatiosEn {
	TranslationsPlayerAspectRatiosEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get contain => 'Contain';
	String get cover => 'Cover';
	String get fill => 'Fill';
	String get fit_height => 'Fit height';
	String get fit_width => 'Fit width';
	String get scale_down => 'Scale down';
}

// Path: message.account
class TranslationsMessageAccountEn {
	TranslationsMessageAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get login_success => 'Login success.';
	String get register_success => 'Register success, further instructions have been sent to your email.';
	String get login_password_longer_than_6 => 'Password must be longer than 6 characters';
	String get please_type_email => 'Please type your email';
	String get please_type_email_or_username => 'Please type your email or username';
	String get please_type_valid_email => 'Please type a valid email';
	String get please_type_password => 'Please type your password';
	String get please_type_captcha => 'Please type the captcha';
}

// Path: message.comment
class TranslationsMessageCommentEn {
	TranslationsMessageCommentEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get content_empty => 'Content can not be empty.';
	String get content_too_long => 'Content can not be longer than 1000 characters.';
	String get sent => 'Reply sent.';
}

// Path: message.create_thread
class TranslationsMessageCreateThreadEn {
	TranslationsMessageCreateThreadEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title_empty => 'Title can not be empty.';
	String get title_too_long => 'Title is too long.';
	String get content_empty => 'Content can not be empty.';
	String get content_too_long => 'Content can not be longer than 20000 characters.';
	String get created => 'Thread Created.';
}

// Path: message.blocked_tags
class TranslationsMessageBlockedTagsEn {
	TranslationsMessageBlockedTagsEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get save_confirm => 'Are you sure to save the blocked tags?';
	String get saved => 'Blocked tags saved.';
	String get reached_limit => 'Blocked tags reached limit.';
}

// Path: message.playlist
class TranslationsMessagePlaylistEn {
	TranslationsMessagePlaylistEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get empty_playlist_title => 'Playlist title can not be empty.';
	String get playlist_created => 'Playlist created.';
	String get playlist_title_edited => 'Playlist title edited.';
}

// Path: message.download
class TranslationsMessageDownloadEn {
	TranslationsMessageDownloadEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get no_provide_storage_permission => 'No storage permission provided.';
	String get task_already_exists => 'Download task already exists.';
	String get task_created => 'Download task created.';
	String get maximum_simultaneous_download_reached => 'Maximum simultaneous download reached.';
}

// Path: message.update
class TranslationsMessageUpdateEn {
	TranslationsMessageUpdateEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get check_update_failed => 'Failed to check update.';
	String get update_available => 'Update available';
	String get already_latest_version => 'Already the latest version';
	String current_version({required Object version}) => 'Current version: ${version}';
	String latest_version({required Object version}) => 'Latest version: ${version}';
	String get view_update => 'View update';
}

// Path: error.account
class TranslationsErrorAccountEn {
	TranslationsErrorAccountEn.internal(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get invalid_login => 'Invalid email or password.';
	String get invalid_host => 'Invalid host.';
	String get invalid_captcha => 'Invalid captcha.';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'locales.en': return 'English';
			case 'locales.ja': return '日本語';
			case 'locales.zh-CN': return '简体中文';
			case 'locales.zh-TW': return '繁體中文';
			case 'rules.title': return 'Rules';
			case 'rules.accept': return 'I accept the rules';
			case 'rules.accept_desc': return 'I agree to have read the rules and will stay up to date with any future rule changes.';
			case 'nav.subscriptions': return 'Subscriptions';
			case 'nav.videos': return 'Videos';
			case 'nav.images': return 'Images';
			case 'nav.forum': return 'Forum';
			case 'nav.search': return 'Search';
			case 'common.video': return 'Video';
			case 'common.image': return 'Image';
			case 'common.collapse': return 'Collapse';
			case 'common.expand': return 'Expand';
			case 'common.translate': return 'Translate';
			case 'common.open': return 'Open';
			case 'refresh.empty': return 'Nothing here';
			case 'refresh.drag_to_load': return 'Pull to load';
			case 'refresh.release_to_load': return 'Release to load';
			case 'refresh.success': return 'Succeeded';
			case 'refresh.failed': return 'Failed';
			case 'refresh.no_more': return 'No more';
			case 'refresh.last_load': return 'Last updated at %T';
			case 'records.select_all': return 'Select all';
			case 'records.select_inverse': return 'Select inverse';
			case 'records.selected_num': return ({required Object num}) => '${num} selected';
			case 'records.multiple_selection_mode': return 'Multiple selection mode';
			case 'records.delete': return 'Delete';
			case 'records.delete_all': return 'Delete all';
			case 'account.captcha': return 'Captcha';
			case 'account.login': return 'Login';
			case 'account.logout': return 'Logout';
			case 'account.register': return 'Register';
			case 'account.email': return 'Email';
			case 'account.email_or_username': return 'Email or username';
			case 'account.password': return 'Password';
			case 'account.forgot_password': return 'Forgot password?';
			case 'account.require_login': return 'You must be logged in to do that.';
			case 'profile.profile': return 'Profile';
			case 'profile.follow': return 'Follow';
			case 'profile.followers': return 'Followers';
			case 'profile.following': return 'Following';
			case 'profile.nickname': return 'Nickname';
			case 'profile.username': return 'Username';
			case 'profile.user_id': return 'User ID';
			case 'profile.description': return 'Description';
			case 'profile.no_description': return 'This user prefers to keep an air of mystery around them.';
			case 'profile.join_date': return 'Join date';
			case 'profile.last_active_time': return 'Last active time';
			case 'profile.online': return 'Online';
			case 'profile.message': return 'Message';
			case 'profile.guestbook': return 'Guestbook';
			case 'profile.view_more': return 'View more';
			case 'sort.latest': return 'Latest';
			case 'sort.trending': return 'Trending';
			case 'sort.popularity': return 'Popularity';
			case 'sort.most_views': return 'Most views';
			case 'sort.most_likes': return 'Most likes';
			case 'filter.all': return 'All';
			case 'filter.filter': return 'Filter';
			case 'filter.rating': return 'Rating';
			case 'filter.tag': return 'Tag';
			case 'filter.tags': return 'Tags';
			case 'filter.date': return 'Date';
			case 'filter.general': return 'General';
			case 'filter.ecchi': return 'Ecchi';
			case 'filter.select_rating': return 'Select rating';
			case 'filter.select_year': return 'Select year';
			case 'filter.select_month': return 'Select month';
			case 'search.users': return 'Users';
			case 'search.search': return 'Search';
			case 'search.history.delete': return 'Delete All';
			case 'time.seconds_ago': return ({required Object time}) => '${time} seconds ago';
			case 'time.minutes_ago': return ({required Object time}) => '${time} minutes ago';
			case 'time.hours_ago': return ({required Object time}) => '${time} hours ago';
			case 'time.days_ago': return ({required Object time}) => '${time} days ago';
			case 'media.private': return 'Private';
			case 'media.add_to_playlist': return 'Add to playlist';
			case 'media.external_video': return 'External video';
			case 'media.share': return 'Share';
			case 'media.download': return 'Download';
			case 'media.more_from': return ({required Object username}) => 'More from ${username}';
			case 'media.more_like_this': return 'More like this';
			case 'media.updated_at': return ({required Object time}) => 'Updated at ${time}';
			case 'player.current_item': return ({required Object item}) => 'Current: ${item}';
			case 'player.quality': return 'Quality';
			case 'player.select_quality': return 'Select quality';
			case 'player.playback_speed': return 'Playback speed';
			case 'player.select_playback_speed': return 'Select playback speed';
			case 'player.aspect_ratio': return 'Aspect ratio';
			case 'player.select_aspect_ratio': return 'Select aspect ratio';
			case 'player.aspect_ratios.contain': return 'Contain';
			case 'player.aspect_ratios.cover': return 'Cover';
			case 'player.aspect_ratios.fill': return 'Fill';
			case 'player.aspect_ratios.fit_height': return 'Fit height';
			case 'player.aspect_ratios.fit_width': return 'Fit width';
			case 'player.aspect_ratios.scale_down': return 'Scale down';
			case 'player.seconds': return ({required Object value}) => '${value}s';
			case 'player.double_speed': return '2x';
			case 'comment.comment': return 'Comment';
			case 'comment.comments': return 'Comments';
			case 'comment.comment_detail': return 'Comment detail';
			case 'comment.edit_comment': return 'Edit comment';
			case 'comment.delete_comment': return 'Delete comment';
			case 'comment.reply': return 'Reply';
			case 'comment.replies_in_total': return ({required Object numReply}) => '${numReply} replies in total';
			case 'comment.show_all_replies': return ({required Object numReply}) => 'Show all ${numReply} replies';
			case 'user.following': return 'Following';
			case 'user.history': return 'History';
			case 'user.blocked_tags': return 'Blocked Tags';
			case 'user.friends': return 'Friends';
			case 'user.downloads': return 'Downloads';
			case 'user.favorites': return 'Favorites';
			case 'user.playlists': return 'Playlists';
			case 'user.settings': return 'Settings';
			case 'user.about': return 'About';
			case 'friend.friend_requests': return 'Friend Requests';
			case 'friend.add_friend': return 'Add friend';
			case 'friend.pending': return 'Pending';
			case 'friend.unfriend': return 'Unfriend';
			case 'friend.accept': return 'Accept';
			case 'friend.reject': return 'Reject';
			case 'blocked_tags.add_blocked_tag': return 'Add blocked tag';
			case 'blocked_tags.blocked_tag': return 'Blocked tag';
			case 'download.create_download_task': return 'Create download task';
			case 'download.unknown': return 'Unknown';
			case 'download.enqueued': return 'Enqueued';
			case 'download.downloading': return 'Downloading';
			case 'download.paused': return 'Paused';
			case 'download.finished': return 'Finished';
			case 'download.failed': return 'Failed';
			case 'download.retry': return 'Retry';
			case 'download.delete': return 'Delete';
			case 'download.pause': return 'Pause';
			case 'download.resume': return 'Resume';
			case 'download.open_with': return 'Open with';
			case 'download.jump_to_detail': return 'Jump to detail page';
			case 'playlist.title': return 'Playlist title';
			case 'playlist.create': return 'Create playlist';
			case 'playlist.select': return 'Select playlist';
			case 'playlist.edit_title': return 'Edit title';
			case 'playlist.videos_count': return ({required Object numVideo}) => '${numVideo} video';
			case 'playlist.videos_count_plural': return ({required Object numVideo}) => '${numVideo} videos';
			case 'channel.administration': return 'Administration';
			case 'channel.announcements': return 'Announcements';
			case 'channel.feedback': return 'Feedback';
			case 'channel.support': return 'Support';
			case 'channel.global': return 'Global';
			case 'channel.general': return 'General';
			case 'channel.guides': return 'Guides';
			case 'channel.questions': return 'Questions';
			case 'channel.requests': return 'Requests';
			case 'channel.sharing': return 'Sharing';
			case 'channel.label': return ({required Object numThread, required Object numPosts}) => '${numThread} Threads ${numPosts} Posts';
			case 'create_thread.create_thread': return 'Create thread';
			case 'create_thread.title': return 'Title';
			case 'create_thread.content': return 'Content';
			case 'notifications.ok': return 'OK';
			case 'notifications.success': return 'Success';
			case 'notifications.error': return 'Error';
			case 'notifications.loading': return 'Loading...';
			case 'notifications.cancel': return 'Cancel';
			case 'notifications.confirm': return 'Confirm';
			case 'notifications.apply': return 'Apply';
			case 'settings.appearance': return 'Appearance';
			case 'settings.theme': return 'Theme';
			case 'settings.theme_desc': return 'Change the theme of the App';
			case 'settings.dynamic_color': return 'Dynamic Color';
			case 'settings.dynamic_color_desc': return 'Change the color of the App according to the content';
			case 'settings.custom_color': return 'Custom Color';
			case 'settings.custom_color_desc': return 'Customize the color of the App';
			case 'settings.language': return 'Language';
			case 'settings.language_desc': return 'Change the language of the App';
			case 'settings.display_mode': return 'Display Mode';
			case 'settings.display_mode_desc': return 'Change the display mode of the App';
			case 'settings.work_mode': return 'Work Mode';
			case 'settings.work_mode_desc': return 'Hide all covers of NSFW content';
			case 'settings.network': return 'Network';
			case 'settings.enable_proxy': return 'Enable Proxy';
			case 'settings.enable_proxy_desc': return 'Enable proxy for the App';
			case 'settings.proxy': return 'Proxy';
			case 'settings.proxy_desc': return 'Set the host and port of the proxy';
			case 'settings.player': return 'Player';
			case 'settings.autoplay': return 'Autoplay';
			case 'settings.autoplay_desc': return 'Autoplay video when opening a video page';
			case 'settings.background_play': return 'Background Play';
			case 'settings.background_play_desc': return 'Allow the App to play video in the background';
			case 'settings.download': return 'Download';
			case 'settings.download_path': return 'Download Path';
			case 'settings.allow_media_scan': return 'Allow Media Scan';
			case 'settings.allow_media_scan_desc': return 'Allow media scanner to read downloaded media files';
			case 'settings.logging': return 'Logging';
			case 'settings.enable_logging': return 'Enable Logging';
			case 'settings.enable_logging_desc': return 'Enable logging for the App';
			case 'settings.clear_log': return 'Clear Log';
			case 'settings.clear_log_desc': return ({required Object size}) => 'Current log size: ${size}';
			case 'settings.enable_verbose_logging': return 'Enable Verbose Logging';
			case 'settings.enable_verbose_logging_desc': return 'Record more detailed logs';
			case 'settings.about': return 'About';
			case 'settings.check_update': return 'Check Update';
			case 'settings.check_update_desc': return 'Check if there is a new version available';
			case 'settings.third_party_license': return 'Third Party License';
			case 'settings.third_party_license_desc': return 'View the license of third party libraries';
			case 'theme.system': return 'System';
			case 'theme.light': return 'Light';
			case 'theme.dark': return 'Dark';
			case 'colors.pink': return 'Pink';
			case 'colors.red': return 'Red';
			case 'colors.orange': return 'Orange';
			case 'colors.amber': return 'Amber';
			case 'colors.yellow': return 'Yellow';
			case 'colors.lime': return 'Lime';
			case 'colors.lightGreen': return 'Light Green';
			case 'colors.green': return 'Green';
			case 'colors.teal': return 'Teal';
			case 'colors.cyan': return 'Cyan';
			case 'colors.lightBlue': return 'Light Blue';
			case 'colors.blue': return 'Blue';
			case 'colors.indigo': return 'Indigo';
			case 'colors.purple': return 'Purple';
			case 'colors.deepPurple': return 'Deep Purple';
			case 'colors.blueGrey': return 'Blue Grey';
			case 'colors.brown': return 'Brown';
			case 'colors.grey': return 'Grey';
			case 'display_mode.no_available': return 'No available display mode';
			case 'display_mode.auto': return 'Auto';
			case 'display_mode.system': return 'System';
			case 'proxy.host': return 'Host';
			case 'proxy.port': return 'Port';
			case 'message.exit_app': return 'Press again to exit the App';
			case 'message.are_you_sure_to_do_that': return 'Are you sure to do that?';
			case 'message.restart_required': return 'Restart the App to apply the changes.';
			case 'message.please_type_host': return 'Please type the host';
			case 'message.please_type_port': return 'Please type the port';
			case 'message.account.login_success': return 'Login success.';
			case 'message.account.register_success': return 'Register success, further instructions have been sent to your email.';
			case 'message.account.login_password_longer_than_6': return 'Password must be longer than 6 characters';
			case 'message.account.please_type_email': return 'Please type your email';
			case 'message.account.please_type_email_or_username': return 'Please type your email or username';
			case 'message.account.please_type_valid_email': return 'Please type a valid email';
			case 'message.account.please_type_password': return 'Please type your password';
			case 'message.account.please_type_captcha': return 'Please type the captcha';
			case 'message.comment.content_empty': return 'Content can not be empty.';
			case 'message.comment.content_too_long': return 'Content can not be longer than 1000 characters.';
			case 'message.comment.sent': return 'Reply sent.';
			case 'message.create_thread.title_empty': return 'Title can not be empty.';
			case 'message.create_thread.title_too_long': return 'Title is too long.';
			case 'message.create_thread.content_empty': return 'Content can not be empty.';
			case 'message.create_thread.content_too_long': return 'Content can not be longer than 20000 characters.';
			case 'message.create_thread.created': return 'Thread Created.';
			case 'message.blocked_tags.save_confirm': return 'Are you sure to save the blocked tags?';
			case 'message.blocked_tags.saved': return 'Blocked tags saved.';
			case 'message.blocked_tags.reached_limit': return 'Blocked tags reached limit.';
			case 'message.playlist.empty_playlist_title': return 'Playlist title can not be empty.';
			case 'message.playlist.playlist_created': return 'Playlist created.';
			case 'message.playlist.playlist_title_edited': return 'Playlist title edited.';
			case 'message.download.no_provide_storage_permission': return 'No storage permission provided.';
			case 'message.download.task_already_exists': return 'Download task already exists.';
			case 'message.download.task_created': return 'Download task created.';
			case 'message.download.maximum_simultaneous_download_reached': return 'Maximum simultaneous download reached.';
			case 'message.update.check_update_failed': return 'Failed to check update.';
			case 'message.update.update_available': return 'Update available';
			case 'message.update.already_latest_version': return 'Already the latest version';
			case 'message.update.current_version': return ({required Object version}) => 'Current version: ${version}';
			case 'message.update.latest_version': return ({required Object version}) => 'Latest version: ${version}';
			case 'message.update.view_update': return 'View update';
			case 'error.retry': return 'Load failed, click to retry.';
			case 'error.fetch_failed': return 'Failed to fetch video links.';
			case 'error.fetch_user_info_failed': return 'Failed to fetch user info.';
			case 'error.invalid_path': return 'Invalid path.';
			case 'error.account.invalid_login': return 'Invalid email or password.';
			case 'error.account.invalid_host': return 'Invalid host.';
			case 'error.account.invalid_captcha': return 'Invalid captcha.';
			default: return null;
		}
	}
}

