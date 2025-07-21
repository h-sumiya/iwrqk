///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsZhTw extends Translations {
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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhTw {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'nav.subscriptions': return '訂閱';
			case 'nav.videos': return '影片';
			case 'nav.images': return '圖片';
			case 'nav.forum': return '論壇';
			case 'nav.search': return '搜尋';
			case 'rules.title': return '規則';
			case 'rules.accept': return '接受';
			case 'rules.accept_desc': return '我同意：已閱讀規則並且會隨時留意未來的規則變更。';
			case 'common.video': return '影片';
			case 'common.image': return '圖片';
			case 'common.collapse': return '收合';
			case 'common.expand': return '展開';
			case 'common.translate': return '翻譯';
			case 'common.open': return '打開';
			case 'refresh.empty': return '空空如也';
			case 'refresh.drag_to_load': return '下拉載入';
			case 'refresh.release_to_load': return '釋放載入';
			case 'refresh.success': return '載入成功';
			case 'refresh.failed': return '載入失敗';
			case 'refresh.no_more': return '沒有更多了';
			case 'refresh.last_load': return '上次載入於 %T';
			case 'records.select_all': return '全選';
			case 'records.select_inverse': return '反選';
			case 'records.selected_num': return ({required Object num}) => '已選擇 ${num} 項';
			case 'records.multiple_selection_mode': return '多選模式';
			case 'records.delete': return '刪除';
			case 'records.delete_all': return '刪除所有';
			case 'account.captcha': return '驗證碼';
			case 'account.login': return '登入';
			case 'account.logout': return '登出';
			case 'account.register': return '註冊';
			case 'account.email': return '電子郵件';
			case 'account.email_or_username': return '電子郵件或使用者名稱';
			case 'account.password': return '密碼';
			case 'account.forgot_password': return '忘記密碼';
			case 'account.require_login': return '請先登入';
			case 'profile.profile': return '個人檔案';
			case 'profile.follow': return '追蹤';
			case 'profile.followers': return '粉絲';
			case 'profile.following': return '正在追蹤';
			case 'profile.nickname': return '暱稱';
			case 'profile.username': return '使用者名稱';
			case 'profile.user_id': return '使用者 ID';
			case 'profile.description': return '個人簡介';
			case 'profile.no_description': return '該使用者是個神秘人，不喜歡被人圍觀。';
			case 'profile.join_date': return '加入日期';
			case 'profile.last_active_time': return '最後上線時間';
			case 'profile.online': return '在線上';
			case 'profile.message': return '私訊';
			case 'profile.guestbook': return '留言板';
			case 'profile.view_more': return '查看更多';
			case 'sort.latest': return '最新';
			case 'sort.trending': return '趨勢';
			case 'sort.popularity': return '熱門';
			case 'sort.most_views': return '最多觀看';
			case 'sort.most_likes': return '最多按讚';
			case 'filter.all': return '全部';
			case 'filter.filter': return '篩選';
			case 'filter.rating': return '分級';
			case 'filter.tag': return '標籤';
			case 'filter.tags': return '標籤';
			case 'filter.date': return '日期';
			case 'filter.general': return '普遍級';
			case 'filter.ecchi': return '成人級';
			case 'filter.select_rating': return '選擇分級';
			case 'filter.select_year': return '選擇年份';
			case 'filter.select_month': return '選擇月份';
			case 'search.users': return '使用者';
			case 'search.search': return '搜尋';
			case 'search.history.delete': return '刪除所有紀錄';
			case 'time.seconds_ago': return ({required Object time}) => '${time} 秒前';
			case 'time.minutes_ago': return ({required Object time}) => '${time} 分鐘前';
			case 'time.hours_ago': return ({required Object time}) => '${time} 小時前';
			case 'time.days_ago': return ({required Object time}) => '${time} 天前';
			case 'media.private': return '私人';
			case 'media.add_to_playlist': return '加入播放清單';
			case 'media.external_video': return '外部影片';
			case 'media.share': return '分享';
			case 'media.download': return '下載';
			case 'media.more_from': return ({required Object username}) => '更多來自 ${username}';
			case 'media.more_like_this': return '類似作品';
			case 'media.updated_at': return ({required Object time}) => '更新於 ${time}';
			case 'player.current_item': return ({required Object item}) => '目前: ${item}';
			case 'player.quality': return '畫質';
			case 'player.select_quality': return '選擇畫質';
			case 'player.playback_speed': return '播放速度';
			case 'player.select_playback_speed': return '選擇播放速度';
			case 'player.aspect_ratio': return '長寬比';
			case 'player.select_aspect_ratio': return '選擇長寬比';
			case 'player.aspect_ratios.contain': return '包含';
			case 'player.aspect_ratios.cover': return '覆蓋';
			case 'player.aspect_ratios.fill': return '填滿';
			case 'player.aspect_ratios.fit_height': return '適應高度';
			case 'player.aspect_ratios.fit_width': return '適應寬度';
			case 'player.aspect_ratios.scale_down': return '縮小適應';
			case 'player.seconds': return ({required Object value}) => '${value} 秒';
			case 'player.double_speed': return '2 倍';
			case 'comment.comment': return '評論';
			case 'comment.comments': return '評論';
			case 'comment.comment_detail': return '評論詳情';
			case 'comment.edit_comment': return '編輯評論';
			case 'comment.delete_comment': return '刪除評論';
			case 'comment.reply': return '回覆';
			case 'comment.replies_in_total': return ({required Object numReply}) => '共 ${numReply} 條回覆';
			case 'comment.show_all_replies': return ({required Object numReply}) => '顯示全部 ${numReply} 條回覆';
			case 'user.following': return '正在關注';
			case 'user.history': return '歷史紀錄';
			case 'user.blocked_tags': return '封鎖標籤';
			case 'user.friends': return '好友';
			case 'user.downloads': return '下載記錄';
			case 'user.favorites': return '收藏';
			case 'user.playlists': return '播放清單';
			case 'user.settings': return '設置';
			case 'user.about': return '關於';
			case 'friend.friend_requests': return '好友請求';
			case 'friend.add_friend': return '新增好友';
			case 'friend.pending': return '待處理';
			case 'friend.unfriend': return '解除好友關係';
			case 'friend.accept': return '接受';
			case 'friend.reject': return '拒絕';
			case 'blocked_tags.add_blocked_tag': return '新增封鎖標籤';
			case 'blocked_tags.blocked_tag': return '封鎖標籤';
			case 'download.create_download_task': return '建立下載任務';
			case 'download.unknown': return '未知';
			case 'download.enqueued': return '等待中';
			case 'download.downloading': return '下載中';
			case 'download.paused': return '已暫停';
			case 'download.finished': return '已完成';
			case 'download.failed': return '下載失敗';
			case 'download.retry': return '重新下載';
			case 'download.delete': return '刪除下載任務';
			case 'download.pause': return '暫停';
			case 'download.resume': return '繼續';
			case 'download.open_with': return '用...開啟';
			case 'download.jump_to_detail': return '查看詳情';
			case 'playlist.title': return '播放清單標題';
			case 'playlist.create': return '創建播放清單';
			case 'playlist.select': return '選擇播放清單';
			case 'playlist.edit_title': return '編輯標題';
			case 'playlist.videos_count': return ({required Object numVideo}) => '${numVideo} 個影片';
			case 'playlist.videos_count_plural': return ({required Object numVideo}) => '${numVideo} 個影片';
			case 'channel.administration': return '管理者';
			case 'channel.announcements': return '公告';
			case 'channel.feedback': return '回饋';
			case 'channel.support': return '支援';
			case 'channel.global': return '全域';
			case 'channel.general': return '一般';
			case 'channel.guides': return '指南';
			case 'channel.questions': return '幫助/問題';
			case 'channel.requests': return '請求';
			case 'channel.sharing': return '分享';
			case 'channel.label': return ({required Object numThread, required Object numPosts}) => '${numThread} 個帖子 ${numPosts} 個回覆';
			case 'create_thread.create_thread': return '發帖';
			case 'create_thread.title': return '標題';
			case 'create_thread.content': return '內容';
			case 'notifications.ok': return '好的';
			case 'notifications.success': return '成功';
			case 'notifications.error': return '錯誤';
			case 'notifications.loading': return '載入中...';
			case 'notifications.cancel': return '取消';
			case 'notifications.confirm': return '確認';
			case 'notifications.apply': return '應用';
			case 'settings.appearance': return '外觀設定';
			case 'settings.theme': return '主題';
			case 'settings.theme_desc': return '設定該軟體的主題';
			case 'settings.dynamic_color': return '動態取色';
			case 'settings.dynamic_color_desc': return '根據內容動態更改該軟體的顏色';
			case 'settings.custom_color': return '自定義顏色';
			case 'settings.custom_color_desc': return '自定義該軟體的主題色';
			case 'settings.language': return '語言';
			case 'settings.language_desc': return '設定該軟體的語言';
			case 'settings.display_mode': return '顯示模式';
			case 'settings.display_mode_desc': return '設定該軟體的顯示模式';
			case 'settings.work_mode': return '工作模式';
			case 'settings.work_mode_desc': return '隱藏所有 NSFW 內容的封面';
			case 'settings.network': return '網路設定';
			case 'settings.enable_proxy': return '啟用代理';
			case 'settings.enable_proxy_desc': return '啟用代理服務';
			case 'settings.proxy': return '代理設定';
			case 'settings.proxy_desc': return '設定代理伺服器';
			case 'settings.player': return '播放器設定';
			case 'settings.autoplay': return '自動播放';
			case 'settings.autoplay_desc': return '打開影片頁面時自動播放影片';
			case 'settings.background_play': return '背景播放';
			case 'settings.background_play_desc': return '允許該軟體在後台播放影片';
			case 'settings.download': return '下載設定';
			case 'settings.download_path': return '下載路徑';
			case 'settings.allow_media_scan': return '允許媒體掃描';
			case 'settings.allow_media_scan_desc': return '允許媒體掃描程式讀取下載的媒體檔案';
			case 'settings.logging': return '日誌設定';
			case 'settings.enable_logging': return '啟用日誌';
			case 'settings.enable_logging_desc': return '啟用該軟體的日誌記錄';
			case 'settings.clear_log': return '清除日誌';
			case 'settings.clear_log_desc': return ({required Object size}) => '目前日誌大小: ${size}';
			case 'settings.enable_verbose_logging': return '啟用詳細日誌';
			case 'settings.enable_verbose_logging_desc': return '記錄更詳細的日誌';
			case 'settings.about': return '關於';
			case 'settings.check_update': return '檢查更新';
			case 'settings.check_update_desc': return '檢查是否有新版本可用';
			case 'settings.third_party_license': return '第三方庫許可';
			case 'settings.third_party_license_desc': return '查看第三方庫的許可證';
			case 'theme.system': return '跟隨系統';
			case 'theme.light': return '淺色';
			case 'theme.dark': return '深色';
			case 'colors.pink': return '粉紅';
			case 'colors.red': return '紅色';
			case 'colors.orange': return '橙色';
			case 'colors.amber': return '琥珀';
			case 'colors.yellow': return '黃色';
			case 'colors.lime': return '青檸';
			case 'colors.lightGreen': return '淺綠';
			case 'colors.green': return '綠色';
			case 'colors.teal': return '青色';
			case 'colors.cyan': return '藍綠';
			case 'colors.lightBlue': return '淺藍';
			case 'colors.blue': return '藍色';
			case 'colors.indigo': return '藍靛';
			case 'colors.purple': return '紫色';
			case 'colors.deepPurple': return '深紫';
			case 'colors.blueGrey': return '藍灰';
			case 'colors.brown': return '棕色';
			case 'colors.grey': return '灰色';
			case 'display_mode.no_available': return '無可用顯示模式';
			case 'display_mode.auto': return '自動';
			case 'display_mode.system': return '系統';
			case 'proxy.host': return '主機名';
			case 'proxy.port': return '端口';
			case 'message.exit_app': return '再按一次退出該軟體';
			case 'message.are_you_sure_to_do_that': return '你確定要這麼做嗎？';
			case 'message.restart_required': return '重啟後生效';
			case 'message.please_type_host': return '請輸入主機名';
			case 'message.please_type_port': return '請輸入端口';
			case 'message.account.login_success': return '登入成功！';
			case 'message.account.register_success': return '註冊成功，請查看郵箱激活帳號。';
			case 'message.account.login_password_longer_than_6': return '密碼長度至少為 6 位';
			case 'message.account.please_type_email': return '請輸入郵箱';
			case 'message.account.please_type_email_or_username': return '請輸入郵箱或用戶名';
			case 'message.account.please_type_valid_email': return '請輸入正確的郵箱';
			case 'message.account.please_type_password': return '請輸入密碼';
			case 'message.account.please_type_captcha': return '請輸入驗證碼';
			case 'message.comment.content_empty': return '內容不能為空。';
			case 'message.comment.content_too_long': return '內容不能超過 1000 個字符。';
			case 'message.comment.sent': return '回覆已發送。';
			case 'message.create_thread.title_empty': return '標題不能為空。';
			case 'message.create_thread.title_too_long': return '標題不能太長。';
			case 'message.create_thread.content_empty': return '內容不能為空。';
			case 'message.create_thread.content_too_long': return '內容不能超過 20000 個字符。';
			case 'message.create_thread.created': return '帖子已發送。';
			case 'message.blocked_tags.save_confirm': return '確定保存屏蔽標籤嗎？';
			case 'message.blocked_tags.saved': return '屏蔽標籤已保存。';
			case 'message.blocked_tags.reached_limit': return '屏蔽標籤數量已達到上限。';
			case 'message.playlist.empty_playlist_title': return '播放列表標題不能為空。';
			case 'message.playlist.playlist_created': return '播放列表已創建。';
			case 'message.playlist.playlist_title_edited': return '播放列表標題已修改。';
			case 'message.download.no_provide_storage_permission': return '未提供存儲權限。';
			case 'message.download.task_already_exists': return '下載任務已存在。';
			case 'message.download.task_created': return '下載任務已創建。';
			case 'message.download.maximum_simultaneous_download_reached': return '已達到最大同時下載數。';
			case 'message.update.check_update_failed': return '檢查更新失敗';
			case 'message.update.update_available': return '有新版本可用';
			case 'message.update.already_latest_version': return '已經是最新版本';
			case 'message.update.current_version': return ({required Object version}) => '當前版本：${version}';
			case 'message.update.latest_version': return ({required Object version}) => '最新版本：${version}';
			case 'message.update.view_update': return '查看更新';
			case 'error.retry': return '載入失敗，點擊重試';
			case 'error.fetch_failed': return '無法獲取影片連結';
			case 'error.fetch_user_info_failed': return '無法獲取使用者資訊';
			case 'error.invalid_path': return '無效的路徑';
			case 'error.account.invalid_login': return '郵箱或密碼錯誤';
			case 'error.account.invalid_host': return '無效的主機名';
			case 'error.account.invalid_captcha': return '驗證碼錯誤';
			default: return null;
		}
	}
}

