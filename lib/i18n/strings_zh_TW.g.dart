///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsZhTw extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhTw({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhTw,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-TW>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsZhTw _root = this; // ignore: unused_field

	@override 
	TranslationsZhTw $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhTw(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsNavZhTw nav = _TranslationsNavZhTw._(_root);
	@override late final _TranslationsRulesZhTw rules = _TranslationsRulesZhTw._(_root);
	@override late final _TranslationsCommonZhTw common = _TranslationsCommonZhTw._(_root);
	@override late final _TranslationsRefreshZhTw refresh = _TranslationsRefreshZhTw._(_root);
	@override late final _TranslationsRecordsZhTw records = _TranslationsRecordsZhTw._(_root);
	@override late final _TranslationsAccountZhTw account = _TranslationsAccountZhTw._(_root);
	@override late final _TranslationsProfileZhTw profile = _TranslationsProfileZhTw._(_root);
	@override late final _TranslationsSortZhTw sort = _TranslationsSortZhTw._(_root);
	@override late final _TranslationsFilterZhTw filter = _TranslationsFilterZhTw._(_root);
	@override late final _TranslationsSearchZhTw search = _TranslationsSearchZhTw._(_root);
	@override late final _TranslationsTimeZhTw time = _TranslationsTimeZhTw._(_root);
	@override late final _TranslationsMediaZhTw media = _TranslationsMediaZhTw._(_root);
	@override late final _TranslationsPlayerZhTw player = _TranslationsPlayerZhTw._(_root);
	@override late final _TranslationsCommentZhTw comment = _TranslationsCommentZhTw._(_root);
	@override late final _TranslationsUserZhTw user = _TranslationsUserZhTw._(_root);
	@override late final _TranslationsFriendZhTw friend = _TranslationsFriendZhTw._(_root);
	@override late final _TranslationsBlockedTagsZhTw blocked_tags = _TranslationsBlockedTagsZhTw._(_root);
	@override late final _TranslationsDownloadZhTw download = _TranslationsDownloadZhTw._(_root);
	@override late final _TranslationsPlaylistZhTw playlist = _TranslationsPlaylistZhTw._(_root);
	@override late final _TranslationsChannelZhTw channel = _TranslationsChannelZhTw._(_root);
	@override late final _TranslationsCreateThreadZhTw create_thread = _TranslationsCreateThreadZhTw._(_root);
	@override late final _TranslationsNotificationsZhTw notifications = _TranslationsNotificationsZhTw._(_root);
	@override late final _TranslationsSettingsZhTw settings = _TranslationsSettingsZhTw._(_root);
	@override late final _TranslationsThemeZhTw theme = _TranslationsThemeZhTw._(_root);
	@override late final _TranslationsColorsZhTw colors = _TranslationsColorsZhTw._(_root);
	@override late final _TranslationsDisplayModeZhTw display_mode = _TranslationsDisplayModeZhTw._(_root);
	@override late final _TranslationsProxyZhTw proxy = _TranslationsProxyZhTw._(_root);
	@override late final _TranslationsMessageZhTw message = _TranslationsMessageZhTw._(_root);
	@override late final _TranslationsErrorZhTw error = _TranslationsErrorZhTw._(_root);
}

// Path: nav
class _TranslationsNavZhTw extends TranslationsNavEn {
	_TranslationsNavZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get subscriptions => '訂閱';
	@override String get videos => '影片';
	@override String get images => '圖片';
	@override String get forum => '論壇';
	@override String get search => '搜尋';
}

// Path: rules
class _TranslationsRulesZhTw extends TranslationsRulesEn {
	_TranslationsRulesZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '規則';
	@override String get accept => '接受';
	@override String get accept_desc => '我同意：已閱讀規則並且會隨時留意未來的規則變更。';
}

// Path: common
class _TranslationsCommonZhTw extends TranslationsCommonEn {
	_TranslationsCommonZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get video => '影片';
	@override String get image => '圖片';
	@override String get collapse => '收合';
	@override String get expand => '展開';
	@override String get translate => '翻譯';
	@override String get open => '打開';
}

// Path: refresh
class _TranslationsRefreshZhTw extends TranslationsRefreshEn {
	_TranslationsRefreshZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get empty => '空空如也';
	@override String get drag_to_load => '下拉載入';
	@override String get release_to_load => '釋放載入';
	@override String get success => '載入成功';
	@override String get failed => '載入失敗';
	@override String get no_more => '沒有更多了';
	@override String get last_load => '上次載入於 %T';
}

// Path: records
class _TranslationsRecordsZhTw extends TranslationsRecordsEn {
	_TranslationsRecordsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get select_all => '全選';
	@override String get select_inverse => '反選';
	@override String selected_num({required Object num}) => '已選擇 ${num} 項';
	@override String get multiple_selection_mode => '多選模式';
	@override String get delete => '刪除';
	@override String get delete_all => '刪除所有';
}

// Path: account
class _TranslationsAccountZhTw extends TranslationsAccountEn {
	_TranslationsAccountZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get captcha => '驗證碼';
	@override String get login => '登入';
	@override String get logout => '登出';
	@override String get register => '註冊';
	@override String get email => '電子郵件';
	@override String get email_or_username => '電子郵件或使用者名稱';
	@override String get password => '密碼';
	@override String get forgot_password => '忘記密碼';
	@override String get require_login => '請先登入';
}

// Path: profile
class _TranslationsProfileZhTw extends TranslationsProfileEn {
	_TranslationsProfileZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get profile => '個人檔案';
	@override String get follow => '追蹤';
	@override String get followers => '粉絲';
	@override String get following => '正在追蹤';
	@override String get nickname => '暱稱';
	@override String get username => '使用者名稱';
	@override String get user_id => '使用者 ID';
	@override String get description => '個人簡介';
	@override String get no_description => '該使用者是個神秘人，不喜歡被人圍觀。';
	@override String get join_date => '加入日期';
	@override String get last_active_time => '最後上線時間';
	@override String get online => '在線上';
	@override String get message => '私訊';
	@override String get guestbook => '留言板';
	@override String get view_more => '查看更多';
}

// Path: sort
class _TranslationsSortZhTw extends TranslationsSortEn {
	_TranslationsSortZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get latest => '最新';
	@override String get trending => '趨勢';
	@override String get popularity => '熱門';
	@override String get most_views => '最多觀看';
	@override String get most_likes => '最多按讚';
}

// Path: filter
class _TranslationsFilterZhTw extends TranslationsFilterEn {
	_TranslationsFilterZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get all => '全部';
	@override String get filter => '篩選';
	@override String get rating => '分級';
	@override String get tag => '標籤';
	@override String get tags => '標籤';
	@override String get date => '日期';
	@override String get general => '普遍級';
	@override String get ecchi => '成人級';
	@override String get select_rating => '選擇分級';
	@override String get select_year => '選擇年份';
	@override String get select_month => '選擇月份';
}

// Path: search
class _TranslationsSearchZhTw extends TranslationsSearchEn {
	_TranslationsSearchZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get users => '使用者';
	@override String get search => '搜尋';
	@override late final _TranslationsSearchHistoryZhTw history = _TranslationsSearchHistoryZhTw._(_root);
}

// Path: time
class _TranslationsTimeZhTw extends TranslationsTimeEn {
	_TranslationsTimeZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String seconds_ago({required Object time}) => '${time} 秒前';
	@override String minutes_ago({required Object time}) => '${time} 分鐘前';
	@override String hours_ago({required Object time}) => '${time} 小時前';
	@override String days_ago({required Object time}) => '${time} 天前';
}

// Path: media
class _TranslationsMediaZhTw extends TranslationsMediaEn {
	_TranslationsMediaZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get private => '私人';
	@override String get add_to_playlist => '加入播放清單';
	@override String get external_video => '外部影片';
	@override String get share => '分享';
	@override String get download => '下載';
	@override String more_from({required Object username}) => '更多來自 ${username}';
	@override String get more_like_this => '類似作品';
	@override String updated_at({required Object time}) => '更新於 ${time}';
	@override String get detail => '詳細';
	@override String get comments => '評論';
}

// Path: player
class _TranslationsPlayerZhTw extends TranslationsPlayerEn {
	_TranslationsPlayerZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String current_item({required Object item}) => '目前: ${item}';
	@override String get quality => '畫質';
	@override String get select_quality => '選擇畫質';
	@override String get playback_speed => '播放速度';
	@override String get select_playback_speed => '選擇播放速度';
	@override String get aspect_ratio => '長寬比';
	@override String get select_aspect_ratio => '選擇長寬比';
	@override late final _TranslationsPlayerAspectRatiosZhTw aspect_ratios = _TranslationsPlayerAspectRatiosZhTw._(_root);
	@override String seconds({required Object value}) => '${value} 秒';
	@override String get double_speed => '2 倍';
}

// Path: comment
class _TranslationsCommentZhTw extends TranslationsCommentEn {
	_TranslationsCommentZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get comment => '評論';
	@override String get comments => '評論';
	@override String get comment_detail => '評論詳情';
	@override String get edit_comment => '編輯評論';
	@override String get delete_comment => '刪除評論';
	@override String get reply => '回覆';
	@override String replies_in_total({required Object numReply}) => '共 ${numReply} 條回覆';
	@override String show_all_replies({required Object numReply}) => '顯示全部 ${numReply} 條回覆';
}

// Path: user
class _TranslationsUserZhTw extends TranslationsUserEn {
	_TranslationsUserZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get following => '正在關注';
	@override String get history => '歷史紀錄';
	@override String get blocked_tags => '封鎖標籤';
	@override String get friends => '好友';
	@override String get downloads => '下載記錄';
	@override String get favorites => '收藏';
	@override String get playlists => '播放清單';
	@override String get settings => '設置';
	@override String get about => '關於';
}

// Path: friend
class _TranslationsFriendZhTw extends TranslationsFriendEn {
	_TranslationsFriendZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get friend_requests => '好友請求';
	@override String get add_friend => '新增好友';
	@override String get pending => '待處理';
	@override String get unfriend => '解除好友關係';
	@override String get accept => '接受';
	@override String get reject => '拒絕';
}

// Path: blocked_tags
class _TranslationsBlockedTagsZhTw extends TranslationsBlockedTagsEn {
	_TranslationsBlockedTagsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get add_blocked_tag => '新增封鎖標籤';
	@override String get blocked_tag => '封鎖標籤';
}

// Path: download
class _TranslationsDownloadZhTw extends TranslationsDownloadEn {
	_TranslationsDownloadZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get create_download_task => '建立下載任務';
	@override String get unknown => '未知';
	@override String get enqueued => '等待中';
	@override String get downloading => '下載中';
	@override String get paused => '已暫停';
	@override String get finished => '已完成';
	@override String get failed => '下載失敗';
	@override String get retry => '重新下載';
	@override String get delete => '刪除下載任務';
	@override String get pause => '暫停';
	@override String get resume => '繼續';
	@override String get open_with => '用...開啟';
	@override String get jump_to_detail => '查看詳情';
}

// Path: playlist
class _TranslationsPlaylistZhTw extends TranslationsPlaylistEn {
	_TranslationsPlaylistZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title => '播放清單標題';
	@override String get create => '創建播放清單';
	@override String get select => '選擇播放清單';
	@override String get edit_title => '編輯標題';
	@override String videos_count({required Object numVideo}) => '${numVideo} 個影片';
	@override String videos_count_plural({required Object numVideo}) => '${numVideo} 個影片';
}

// Path: channel
class _TranslationsChannelZhTw extends TranslationsChannelEn {
	_TranslationsChannelZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get administration => '管理者';
	@override String get announcements => '公告';
	@override String get feedback => '回饋';
	@override String get support => '支援';
	@override String get global => '全域';
	@override String get general => '一般';
	@override String get guides => '指南';
	@override String get questions => '幫助/問題';
	@override String get requests => '請求';
	@override String get sharing => '分享';
	@override String label({required Object numThread, required Object numPosts}) => '${numThread} 個帖子 ${numPosts} 個回覆';
}

// Path: create_thread
class _TranslationsCreateThreadZhTw extends TranslationsCreateThreadEn {
	_TranslationsCreateThreadZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get create_thread => '發帖';
	@override String get title => '標題';
	@override String get content => '內容';
}

// Path: notifications
class _TranslationsNotificationsZhTw extends TranslationsNotificationsEn {
	_TranslationsNotificationsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get ok => '好的';
	@override String get success => '成功';
	@override String get error => '錯誤';
	@override String get loading => '載入中...';
	@override String get cancel => '取消';
	@override String get confirm => '確認';
	@override String get apply => '應用';
}

// Path: settings
class _TranslationsSettingsZhTw extends TranslationsSettingsEn {
	_TranslationsSettingsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get appearance => '外觀設定';
	@override String get theme => '主題';
	@override String get theme_desc => '設定該軟體的主題';
	@override String get dynamic_color => '動態取色';
	@override String get dynamic_color_desc => '根據內容動態更改該軟體的顏色';
	@override String get custom_color => '自定義顏色';
	@override String get custom_color_desc => '自定義該軟體的主題色';
	@override String get language => '語言';
	@override String get language_desc => '設定該軟體的語言';
	@override String get display_mode => '顯示模式';
	@override String get display_mode_desc => '設定該軟體的顯示模式';
	@override String get work_mode => '工作模式';
	@override String get work_mode_desc => '隱藏所有 NSFW 內容的封面';
	@override String get network => '網路設定';
	@override String get enable_proxy => '啟用代理';
	@override String get enable_proxy_desc => '啟用代理服務';
	@override String get proxy => '代理設定';
	@override String get proxy_desc => '設定代理伺服器';
	@override String get player => '播放器設定';
	@override String get autoplay => '自動播放';
	@override String get autoplay_desc => '打開影片頁面時自動播放影片';
	@override String get background_play => '背景播放';
	@override String get background_play_desc => '允許該軟體在後台播放影片';
	@override String get download => '下載設定';
	@override String get download_path => '下載路徑';
	@override String get allow_media_scan => '允許媒體掃描';
	@override String get allow_media_scan_desc => '允許媒體掃描程式讀取下載的媒體檔案';
	@override String get logging => '日誌設定';
	@override String get enable_logging => '啟用日誌';
	@override String get enable_logging_desc => '啟用該軟體的日誌記錄';
	@override String get clear_log => '清除日誌';
	@override String clear_log_desc({required Object size}) => '目前日誌大小: ${size}';
	@override String get enable_verbose_logging => '啟用詳細日誌';
	@override String get enable_verbose_logging_desc => '記錄更詳細的日誌';
	@override String get about => '關於';
	@override String get check_update => '檢查更新';
	@override String get check_update_desc => '檢查是否有新版本可用';
	@override String get third_party_license => '第三方庫許可';
	@override String get third_party_license_desc => '查看第三方庫的許可證';
}

// Path: theme
class _TranslationsThemeZhTw extends TranslationsThemeEn {
	_TranslationsThemeZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get system => '跟隨系統';
	@override String get light => '淺色';
	@override String get dark => '深色';
}

// Path: colors
class _TranslationsColorsZhTw extends TranslationsColorsEn {
	_TranslationsColorsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get pink => '粉紅';
	@override String get red => '紅色';
	@override String get orange => '橙色';
	@override String get amber => '琥珀';
	@override String get yellow => '黃色';
	@override String get lime => '青檸';
	@override String get lightGreen => '淺綠';
	@override String get green => '綠色';
	@override String get teal => '青色';
	@override String get cyan => '藍綠';
	@override String get lightBlue => '淺藍';
	@override String get blue => '藍色';
	@override String get indigo => '藍靛';
	@override String get purple => '紫色';
	@override String get deepPurple => '深紫';
	@override String get blueGrey => '藍灰';
	@override String get brown => '棕色';
	@override String get grey => '灰色';
}

// Path: display_mode
class _TranslationsDisplayModeZhTw extends TranslationsDisplayModeEn {
	_TranslationsDisplayModeZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get no_available => '無可用顯示模式';
	@override String get auto => '自動';
	@override String get system => '系統';
}

// Path: proxy
class _TranslationsProxyZhTw extends TranslationsProxyEn {
	_TranslationsProxyZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get host => '主機名';
	@override String get port => '端口';
}

// Path: message
class _TranslationsMessageZhTw extends TranslationsMessageEn {
	_TranslationsMessageZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get exit_app => '再按一次退出該軟體';
	@override String get are_you_sure_to_do_that => '你確定要這麼做嗎？';
	@override String get restart_required => '重啟後生效';
	@override String get please_type_host => '請輸入主機名';
	@override String get please_type_port => '請輸入端口';
	@override late final _TranslationsMessageAccountZhTw account = _TranslationsMessageAccountZhTw._(_root);
	@override late final _TranslationsMessageCommentZhTw comment = _TranslationsMessageCommentZhTw._(_root);
	@override late final _TranslationsMessageCreateThreadZhTw create_thread = _TranslationsMessageCreateThreadZhTw._(_root);
	@override late final _TranslationsMessageBlockedTagsZhTw blocked_tags = _TranslationsMessageBlockedTagsZhTw._(_root);
	@override late final _TranslationsMessagePlaylistZhTw playlist = _TranslationsMessagePlaylistZhTw._(_root);
	@override late final _TranslationsMessageDownloadZhTw download = _TranslationsMessageDownloadZhTw._(_root);
	@override late final _TranslationsMessageUpdateZhTw update = _TranslationsMessageUpdateZhTw._(_root);
}

// Path: error
class _TranslationsErrorZhTw extends TranslationsErrorEn {
	_TranslationsErrorZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get retry => '載入失敗，點擊重試';
	@override String get fetch_failed => '無法獲取影片連結';
	@override String get fetch_user_info_failed => '無法獲取使用者資訊';
	@override String get invalid_path => '無效的路徑';
	@override String get intercept_app_exit => '攔截應用程式退出';
	@override late final _TranslationsErrorAccountZhTw account = _TranslationsErrorAccountZhTw._(_root);
}

// Path: search.history
class _TranslationsSearchHistoryZhTw extends TranslationsSearchHistoryEn {
	_TranslationsSearchHistoryZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get delete => '刪除所有紀錄';
}

// Path: player.aspect_ratios
class _TranslationsPlayerAspectRatiosZhTw extends TranslationsPlayerAspectRatiosEn {
	_TranslationsPlayerAspectRatiosZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get contain => '包含';
	@override String get cover => '覆蓋';
	@override String get fill => '填滿';
	@override String get fit_height => '適應高度';
	@override String get fit_width => '適應寬度';
	@override String get scale_down => '縮小適應';
}

// Path: message.account
class _TranslationsMessageAccountZhTw extends TranslationsMessageAccountEn {
	_TranslationsMessageAccountZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get login_success => '登入成功！';
	@override String get register_success => '註冊成功，請查看郵箱激活帳號。';
	@override String get login_password_longer_than_6 => '密碼長度至少為 6 位';
	@override String get please_type_email => '請輸入郵箱';
	@override String get please_type_email_or_username => '請輸入郵箱或用戶名';
	@override String get please_type_valid_email => '請輸入正確的郵箱';
	@override String get please_type_password => '請輸入密碼';
	@override String get please_type_captcha => '請輸入驗證碼';
}

// Path: message.comment
class _TranslationsMessageCommentZhTw extends TranslationsMessageCommentEn {
	_TranslationsMessageCommentZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get content_empty => '內容不能為空。';
	@override String get content_too_long => '內容不能超過 1000 個字符。';
	@override String get sent => '回覆已發送。';
}

// Path: message.create_thread
class _TranslationsMessageCreateThreadZhTw extends TranslationsMessageCreateThreadEn {
	_TranslationsMessageCreateThreadZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get title_empty => '標題不能為空。';
	@override String get title_too_long => '標題不能太長。';
	@override String get content_empty => '內容不能為空。';
	@override String get content_too_long => '內容不能超過 20000 個字符。';
	@override String get created => '帖子已發送。';
}

// Path: message.blocked_tags
class _TranslationsMessageBlockedTagsZhTw extends TranslationsMessageBlockedTagsEn {
	_TranslationsMessageBlockedTagsZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get save_confirm => '確定保存屏蔽標籤嗎？';
	@override String get saved => '屏蔽標籤已保存。';
	@override String get reached_limit => '屏蔽標籤數量已達到上限。';
}

// Path: message.playlist
class _TranslationsMessagePlaylistZhTw extends TranslationsMessagePlaylistEn {
	_TranslationsMessagePlaylistZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get empty_playlist_title => '播放列表標題不能為空。';
	@override String get playlist_created => '播放列表已創建。';
	@override String get playlist_title_edited => '播放列表標題已修改。';
}

// Path: message.download
class _TranslationsMessageDownloadZhTw extends TranslationsMessageDownloadEn {
	_TranslationsMessageDownloadZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get no_provide_storage_permission => '未提供存儲權限。';
	@override String get task_already_exists => '下載任務已存在。';
	@override String get task_created => '下載任務已創建。';
	@override String get maximum_simultaneous_download_reached => '已達到最大同時下載數。';
}

// Path: message.update
class _TranslationsMessageUpdateZhTw extends TranslationsMessageUpdateEn {
	_TranslationsMessageUpdateZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get check_update_failed => '檢查更新失敗';
	@override String get update_available => '有新版本可用';
	@override String get already_latest_version => '已經是最新版本';
	@override String current_version({required Object version}) => '當前版本：${version}';
	@override String latest_version({required Object version}) => '最新版本：${version}';
	@override String get view_update => '查看更新';
}

// Path: error.account
class _TranslationsErrorAccountZhTw extends TranslationsErrorAccountEn {
	_TranslationsErrorAccountZhTw._(TranslationsZhTw root) : this._root = root, super.internal(root);

	final TranslationsZhTw _root; // ignore: unused_field

	// Translations
	@override String get invalid_login => '郵箱或密碼錯誤';
	@override String get invalid_host => '無效的主機名';
	@override String get invalid_captcha => '驗證碼錯誤';
}

/// The flat map containing all translations for locale <zh-TW>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsZhTw {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'nav.subscriptions' => '訂閱',
			'nav.videos' => '影片',
			'nav.images' => '圖片',
			'nav.forum' => '論壇',
			'nav.search' => '搜尋',
			'rules.title' => '規則',
			'rules.accept' => '接受',
			'rules.accept_desc' => '我同意：已閱讀規則並且會隨時留意未來的規則變更。',
			'common.video' => '影片',
			'common.image' => '圖片',
			'common.collapse' => '收合',
			'common.expand' => '展開',
			'common.translate' => '翻譯',
			'common.open' => '打開',
			'refresh.empty' => '空空如也',
			'refresh.drag_to_load' => '下拉載入',
			'refresh.release_to_load' => '釋放載入',
			'refresh.success' => '載入成功',
			'refresh.failed' => '載入失敗',
			'refresh.no_more' => '沒有更多了',
			'refresh.last_load' => '上次載入於 %T',
			'records.select_all' => '全選',
			'records.select_inverse' => '反選',
			'records.selected_num' => ({required Object num}) => '已選擇 ${num} 項',
			'records.multiple_selection_mode' => '多選模式',
			'records.delete' => '刪除',
			'records.delete_all' => '刪除所有',
			'account.captcha' => '驗證碼',
			'account.login' => '登入',
			'account.logout' => '登出',
			'account.register' => '註冊',
			'account.email' => '電子郵件',
			'account.email_or_username' => '電子郵件或使用者名稱',
			'account.password' => '密碼',
			'account.forgot_password' => '忘記密碼',
			'account.require_login' => '請先登入',
			'profile.profile' => '個人檔案',
			'profile.follow' => '追蹤',
			'profile.followers' => '粉絲',
			'profile.following' => '正在追蹤',
			'profile.nickname' => '暱稱',
			'profile.username' => '使用者名稱',
			'profile.user_id' => '使用者 ID',
			'profile.description' => '個人簡介',
			'profile.no_description' => '該使用者是個神秘人，不喜歡被人圍觀。',
			'profile.join_date' => '加入日期',
			'profile.last_active_time' => '最後上線時間',
			'profile.online' => '在線上',
			'profile.message' => '私訊',
			'profile.guestbook' => '留言板',
			'profile.view_more' => '查看更多',
			'sort.latest' => '最新',
			'sort.trending' => '趨勢',
			'sort.popularity' => '熱門',
			'sort.most_views' => '最多觀看',
			'sort.most_likes' => '最多按讚',
			'filter.all' => '全部',
			'filter.filter' => '篩選',
			'filter.rating' => '分級',
			'filter.tag' => '標籤',
			'filter.tags' => '標籤',
			'filter.date' => '日期',
			'filter.general' => '普遍級',
			'filter.ecchi' => '成人級',
			'filter.select_rating' => '選擇分級',
			'filter.select_year' => '選擇年份',
			'filter.select_month' => '選擇月份',
			'search.users' => '使用者',
			'search.search' => '搜尋',
			'search.history.delete' => '刪除所有紀錄',
			'time.seconds_ago' => ({required Object time}) => '${time} 秒前',
			'time.minutes_ago' => ({required Object time}) => '${time} 分鐘前',
			'time.hours_ago' => ({required Object time}) => '${time} 小時前',
			'time.days_ago' => ({required Object time}) => '${time} 天前',
			'media.private' => '私人',
			'media.add_to_playlist' => '加入播放清單',
			'media.external_video' => '外部影片',
			'media.share' => '分享',
			'media.download' => '下載',
			'media.more_from' => ({required Object username}) => '更多來自 ${username}',
			'media.more_like_this' => '類似作品',
			'media.updated_at' => ({required Object time}) => '更新於 ${time}',
			'media.detail' => '詳細',
			'media.comments' => '評論',
			'player.current_item' => ({required Object item}) => '目前: ${item}',
			'player.quality' => '畫質',
			'player.select_quality' => '選擇畫質',
			'player.playback_speed' => '播放速度',
			'player.select_playback_speed' => '選擇播放速度',
			'player.aspect_ratio' => '長寬比',
			'player.select_aspect_ratio' => '選擇長寬比',
			'player.aspect_ratios.contain' => '包含',
			'player.aspect_ratios.cover' => '覆蓋',
			'player.aspect_ratios.fill' => '填滿',
			'player.aspect_ratios.fit_height' => '適應高度',
			'player.aspect_ratios.fit_width' => '適應寬度',
			'player.aspect_ratios.scale_down' => '縮小適應',
			'player.seconds' => ({required Object value}) => '${value} 秒',
			'player.double_speed' => '2 倍',
			'comment.comment' => '評論',
			'comment.comments' => '評論',
			'comment.comment_detail' => '評論詳情',
			'comment.edit_comment' => '編輯評論',
			'comment.delete_comment' => '刪除評論',
			'comment.reply' => '回覆',
			'comment.replies_in_total' => ({required Object numReply}) => '共 ${numReply} 條回覆',
			'comment.show_all_replies' => ({required Object numReply}) => '顯示全部 ${numReply} 條回覆',
			'user.following' => '正在關注',
			'user.history' => '歷史紀錄',
			'user.blocked_tags' => '封鎖標籤',
			'user.friends' => '好友',
			'user.downloads' => '下載記錄',
			'user.favorites' => '收藏',
			'user.playlists' => '播放清單',
			'user.settings' => '設置',
			'user.about' => '關於',
			'friend.friend_requests' => '好友請求',
			'friend.add_friend' => '新增好友',
			'friend.pending' => '待處理',
			'friend.unfriend' => '解除好友關係',
			'friend.accept' => '接受',
			'friend.reject' => '拒絕',
			'blocked_tags.add_blocked_tag' => '新增封鎖標籤',
			'blocked_tags.blocked_tag' => '封鎖標籤',
			'download.create_download_task' => '建立下載任務',
			'download.unknown' => '未知',
			'download.enqueued' => '等待中',
			'download.downloading' => '下載中',
			'download.paused' => '已暫停',
			'download.finished' => '已完成',
			'download.failed' => '下載失敗',
			'download.retry' => '重新下載',
			'download.delete' => '刪除下載任務',
			'download.pause' => '暫停',
			'download.resume' => '繼續',
			'download.open_with' => '用...開啟',
			'download.jump_to_detail' => '查看詳情',
			'playlist.title' => '播放清單標題',
			'playlist.create' => '創建播放清單',
			'playlist.select' => '選擇播放清單',
			'playlist.edit_title' => '編輯標題',
			'playlist.videos_count' => ({required Object numVideo}) => '${numVideo} 個影片',
			'playlist.videos_count_plural' => ({required Object numVideo}) => '${numVideo} 個影片',
			'channel.administration' => '管理者',
			'channel.announcements' => '公告',
			'channel.feedback' => '回饋',
			'channel.support' => '支援',
			'channel.global' => '全域',
			'channel.general' => '一般',
			'channel.guides' => '指南',
			'channel.questions' => '幫助/問題',
			'channel.requests' => '請求',
			'channel.sharing' => '分享',
			'channel.label' => ({required Object numThread, required Object numPosts}) => '${numThread} 個帖子 ${numPosts} 個回覆',
			'create_thread.create_thread' => '發帖',
			'create_thread.title' => '標題',
			'create_thread.content' => '內容',
			'notifications.ok' => '好的',
			'notifications.success' => '成功',
			'notifications.error' => '錯誤',
			'notifications.loading' => '載入中...',
			'notifications.cancel' => '取消',
			'notifications.confirm' => '確認',
			'notifications.apply' => '應用',
			'settings.appearance' => '外觀設定',
			'settings.theme' => '主題',
			'settings.theme_desc' => '設定該軟體的主題',
			'settings.dynamic_color' => '動態取色',
			'settings.dynamic_color_desc' => '根據內容動態更改該軟體的顏色',
			'settings.custom_color' => '自定義顏色',
			'settings.custom_color_desc' => '自定義該軟體的主題色',
			'settings.language' => '語言',
			'settings.language_desc' => '設定該軟體的語言',
			'settings.display_mode' => '顯示模式',
			'settings.display_mode_desc' => '設定該軟體的顯示模式',
			'settings.work_mode' => '工作模式',
			'settings.work_mode_desc' => '隱藏所有 NSFW 內容的封面',
			'settings.network' => '網路設定',
			'settings.enable_proxy' => '啟用代理',
			'settings.enable_proxy_desc' => '啟用代理服務',
			'settings.proxy' => '代理設定',
			'settings.proxy_desc' => '設定代理伺服器',
			'settings.player' => '播放器設定',
			'settings.autoplay' => '自動播放',
			'settings.autoplay_desc' => '打開影片頁面時自動播放影片',
			'settings.background_play' => '背景播放',
			'settings.background_play_desc' => '允許該軟體在後台播放影片',
			'settings.download' => '下載設定',
			'settings.download_path' => '下載路徑',
			'settings.allow_media_scan' => '允許媒體掃描',
			'settings.allow_media_scan_desc' => '允許媒體掃描程式讀取下載的媒體檔案',
			'settings.logging' => '日誌設定',
			'settings.enable_logging' => '啟用日誌',
			'settings.enable_logging_desc' => '啟用該軟體的日誌記錄',
			'settings.clear_log' => '清除日誌',
			'settings.clear_log_desc' => ({required Object size}) => '目前日誌大小: ${size}',
			'settings.enable_verbose_logging' => '啟用詳細日誌',
			'settings.enable_verbose_logging_desc' => '記錄更詳細的日誌',
			'settings.about' => '關於',
			'settings.check_update' => '檢查更新',
			'settings.check_update_desc' => '檢查是否有新版本可用',
			'settings.third_party_license' => '第三方庫許可',
			'settings.third_party_license_desc' => '查看第三方庫的許可證',
			'theme.system' => '跟隨系統',
			'theme.light' => '淺色',
			'theme.dark' => '深色',
			'colors.pink' => '粉紅',
			'colors.red' => '紅色',
			'colors.orange' => '橙色',
			'colors.amber' => '琥珀',
			'colors.yellow' => '黃色',
			'colors.lime' => '青檸',
			'colors.lightGreen' => '淺綠',
			'colors.green' => '綠色',
			'colors.teal' => '青色',
			'colors.cyan' => '藍綠',
			'colors.lightBlue' => '淺藍',
			'colors.blue' => '藍色',
			'colors.indigo' => '藍靛',
			'colors.purple' => '紫色',
			'colors.deepPurple' => '深紫',
			'colors.blueGrey' => '藍灰',
			'colors.brown' => '棕色',
			'colors.grey' => '灰色',
			'display_mode.no_available' => '無可用顯示模式',
			'display_mode.auto' => '自動',
			'display_mode.system' => '系統',
			'proxy.host' => '主機名',
			'proxy.port' => '端口',
			'message.exit_app' => '再按一次退出該軟體',
			'message.are_you_sure_to_do_that' => '你確定要這麼做嗎？',
			'message.restart_required' => '重啟後生效',
			'message.please_type_host' => '請輸入主機名',
			'message.please_type_port' => '請輸入端口',
			'message.account.login_success' => '登入成功！',
			'message.account.register_success' => '註冊成功，請查看郵箱激活帳號。',
			'message.account.login_password_longer_than_6' => '密碼長度至少為 6 位',
			'message.account.please_type_email' => '請輸入郵箱',
			'message.account.please_type_email_or_username' => '請輸入郵箱或用戶名',
			'message.account.please_type_valid_email' => '請輸入正確的郵箱',
			'message.account.please_type_password' => '請輸入密碼',
			'message.account.please_type_captcha' => '請輸入驗證碼',
			'message.comment.content_empty' => '內容不能為空。',
			'message.comment.content_too_long' => '內容不能超過 1000 個字符。',
			'message.comment.sent' => '回覆已發送。',
			'message.create_thread.title_empty' => '標題不能為空。',
			'message.create_thread.title_too_long' => '標題不能太長。',
			'message.create_thread.content_empty' => '內容不能為空。',
			'message.create_thread.content_too_long' => '內容不能超過 20000 個字符。',
			'message.create_thread.created' => '帖子已發送。',
			'message.blocked_tags.save_confirm' => '確定保存屏蔽標籤嗎？',
			'message.blocked_tags.saved' => '屏蔽標籤已保存。',
			'message.blocked_tags.reached_limit' => '屏蔽標籤數量已達到上限。',
			'message.playlist.empty_playlist_title' => '播放列表標題不能為空。',
			'message.playlist.playlist_created' => '播放列表已創建。',
			'message.playlist.playlist_title_edited' => '播放列表標題已修改。',
			'message.download.no_provide_storage_permission' => '未提供存儲權限。',
			'message.download.task_already_exists' => '下載任務已存在。',
			'message.download.task_created' => '下載任務已創建。',
			'message.download.maximum_simultaneous_download_reached' => '已達到最大同時下載數。',
			'message.update.check_update_failed' => '檢查更新失敗',
			'message.update.update_available' => '有新版本可用',
			'message.update.already_latest_version' => '已經是最新版本',
			'message.update.current_version' => ({required Object version}) => '當前版本：${version}',
			'message.update.latest_version' => ({required Object version}) => '最新版本：${version}',
			'message.update.view_update' => '查看更新',
			'error.retry' => '載入失敗，點擊重試',
			'error.fetch_failed' => '無法獲取影片連結',
			'error.fetch_user_info_failed' => '無法獲取使用者資訊',
			'error.invalid_path' => '無效的路徑',
			'error.intercept_app_exit' => '攔截應用程式退出',
			'error.account.invalid_login' => '郵箱或密碼錯誤',
			'error.account.invalid_host' => '無效的主機名',
			'error.account.invalid_captcha' => '驗證碼錯誤',
			_ => null,
		};
	}
}
