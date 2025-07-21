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
class TranslationsZhCn extends Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsZhCn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.zhCn,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-CN>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsZhCn _root = this; // ignore: unused_field

	@override 
	TranslationsZhCn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsZhCn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsNavZhCn nav = _TranslationsNavZhCn._(_root);
	@override late final _TranslationsRulesZhCn rules = _TranslationsRulesZhCn._(_root);
	@override late final _TranslationsCommonZhCn common = _TranslationsCommonZhCn._(_root);
	@override late final _TranslationsRefreshZhCn refresh = _TranslationsRefreshZhCn._(_root);
	@override late final _TranslationsRecordsZhCn records = _TranslationsRecordsZhCn._(_root);
	@override late final _TranslationsAccountZhCn account = _TranslationsAccountZhCn._(_root);
	@override late final _TranslationsProfileZhCn profile = _TranslationsProfileZhCn._(_root);
	@override late final _TranslationsSortZhCn sort = _TranslationsSortZhCn._(_root);
	@override late final _TranslationsFilterZhCn filter = _TranslationsFilterZhCn._(_root);
	@override late final _TranslationsSearchZhCn search = _TranslationsSearchZhCn._(_root);
	@override late final _TranslationsTimeZhCn time = _TranslationsTimeZhCn._(_root);
	@override late final _TranslationsMediaZhCn media = _TranslationsMediaZhCn._(_root);
	@override late final _TranslationsPlayerZhCn player = _TranslationsPlayerZhCn._(_root);
	@override late final _TranslationsCommentZhCn comment = _TranslationsCommentZhCn._(_root);
	@override late final _TranslationsUserZhCn user = _TranslationsUserZhCn._(_root);
	@override late final _TranslationsFriendZhCn friend = _TranslationsFriendZhCn._(_root);
	@override late final _TranslationsBlockedTagsZhCn blocked_tags = _TranslationsBlockedTagsZhCn._(_root);
	@override late final _TranslationsDownloadZhCn download = _TranslationsDownloadZhCn._(_root);
	@override late final _TranslationsPlaylistZhCn playlist = _TranslationsPlaylistZhCn._(_root);
	@override late final _TranslationsChannelZhCn channel = _TranslationsChannelZhCn._(_root);
	@override late final _TranslationsCreateThreadZhCn create_thread = _TranslationsCreateThreadZhCn._(_root);
	@override late final _TranslationsNotificationsZhCn notifications = _TranslationsNotificationsZhCn._(_root);
	@override late final _TranslationsSettingsZhCn settings = _TranslationsSettingsZhCn._(_root);
	@override late final _TranslationsThemeZhCn theme = _TranslationsThemeZhCn._(_root);
	@override late final _TranslationsColorsZhCn colors = _TranslationsColorsZhCn._(_root);
	@override late final _TranslationsDisplayModeZhCn display_mode = _TranslationsDisplayModeZhCn._(_root);
	@override late final _TranslationsProxyZhCn proxy = _TranslationsProxyZhCn._(_root);
	@override late final _TranslationsMessageZhCn message = _TranslationsMessageZhCn._(_root);
	@override late final _TranslationsErrorZhCn error = _TranslationsErrorZhCn._(_root);
}

// Path: nav
class _TranslationsNavZhCn extends TranslationsNavEn {
	_TranslationsNavZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get subscriptions => '订阅';
	@override String get videos => '视频';
	@override String get images => '图片';
	@override String get forum => '论坛';
	@override String get search => '搜索';
}

// Path: rules
class _TranslationsRulesZhCn extends TranslationsRulesEn {
	_TranslationsRulesZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '规则';
	@override String get accept => '接受';
	@override String get accept_desc => '我同意：已阅读规则并且会随时留意未来的规则变更。';
}

// Path: common
class _TranslationsCommonZhCn extends TranslationsCommonEn {
	_TranslationsCommonZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get video => '视频';
	@override String get image => '图片';
	@override String get collapse => '收起';
	@override String get expand => '展开';
	@override String get translate => '翻译';
	@override String get open => '打开';
}

// Path: refresh
class _TranslationsRefreshZhCn extends TranslationsRefreshEn {
	_TranslationsRefreshZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get empty => '空空如也';
	@override String get drag_to_load => '下拉加载';
	@override String get release_to_load => '释放加载';
	@override String get success => '加载成功';
	@override String get failed => '加载失败';
	@override String get no_more => '没有更多了';
	@override String get last_load => '上次加载于 %T';
}

// Path: records
class _TranslationsRecordsZhCn extends TranslationsRecordsEn {
	_TranslationsRecordsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get select_all => '全选';
	@override String get select_inverse => '反选';
	@override String selected_num({required Object num}) => '已选 ${num} 项';
	@override String get multiple_selection_mode => '多选模式';
	@override String get delete => '删除';
	@override String get delete_all => '删除所有';
}

// Path: account
class _TranslationsAccountZhCn extends TranslationsAccountEn {
	_TranslationsAccountZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get captcha => '验证码';
	@override String get login => '登录';
	@override String get logout => '登出';
	@override String get register => '注册';
	@override String get email => '邮箱';
	@override String get email_or_username => '邮箱或用户名';
	@override String get password => '密码';
	@override String get forgot_password => '忘记密码';
	@override String get require_login => '请先登录';
}

// Path: profile
class _TranslationsProfileZhCn extends TranslationsProfileEn {
	_TranslationsProfileZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get profile => '个人资料';
	@override String get follow => '关注';
	@override String get followers => '粉丝';
	@override String get following => '关注中';
	@override String get nickname => '昵称';
	@override String get username => '用户名';
	@override String get user_id => '用户 ID';
	@override String get description => '个人简介';
	@override String get no_description => '该用户是个神秘人，不喜欢被人围观。';
	@override String get join_date => '加入时间';
	@override String get last_active_time => '最后在线时间';
	@override String get online => '在线';
	@override String get message => '私信';
	@override String get guestbook => '留言板';
	@override String get view_more => '查看更多';
}

// Path: sort
class _TranslationsSortZhCn extends TranslationsSortEn {
	_TranslationsSortZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get latest => '最新';
	@override String get trending => '流行';
	@override String get popularity => '人气';
	@override String get most_views => '最多观看';
	@override String get most_likes => '最多点赞';
}

// Path: filter
class _TranslationsFilterZhCn extends TranslationsFilterEn {
	_TranslationsFilterZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get all => '全部';
	@override String get filter => '筛选';
	@override String get rating => '分级';
	@override String get tag => '标签';
	@override String get tags => '标签';
	@override String get date => '日期';
	@override String get general => '全年龄';
	@override String get ecchi => '成人';
	@override String get select_rating => '选择分级';
	@override String get select_year => '选择年份';
	@override String get select_month => '选择月份';
}

// Path: search
class _TranslationsSearchZhCn extends TranslationsSearchEn {
	_TranslationsSearchZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get users => '用户';
	@override String get search => '搜索';
	@override late final _TranslationsSearchHistoryZhCn history = _TranslationsSearchHistoryZhCn._(_root);
}

// Path: time
class _TranslationsTimeZhCn extends TranslationsTimeEn {
	_TranslationsTimeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String seconds_ago({required Object time}) => '${time} 秒前';
	@override String minutes_ago({required Object time}) => '${time} 分钟前';
	@override String hours_ago({required Object time}) => '${time} 小时前';
	@override String days_ago({required Object time}) => '${time} 天前';
}

// Path: media
class _TranslationsMediaZhCn extends TranslationsMediaEn {
	_TranslationsMediaZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get private => '私有';
	@override String get add_to_playlist => '添加到播放列表';
	@override String get external_video => '外部视频';
	@override String get share => '分享';
	@override String get download => '下载';
	@override String more_from({required Object username}) => '更多来自 ${username}';
	@override String get more_like_this => '类似作品';
	@override String updated_at({required Object time}) => '更新于 ${time}';
}

// Path: player
class _TranslationsPlayerZhCn extends TranslationsPlayerEn {
	_TranslationsPlayerZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String current_item({required Object item}) => '当前: ${item}';
	@override String get quality => '画质';
	@override String get select_quality => '选择画质';
	@override String get playback_speed => '播放速度';
	@override String get select_playback_speed => '选择播放速度';
	@override String get aspect_ratio => '宽高比';
	@override String get select_aspect_ratio => '选择宽高比';
	@override late final _TranslationsPlayerAspectRatiosZhCn aspect_ratios = _TranslationsPlayerAspectRatiosZhCn._(_root);
	@override String seconds({required Object value}) => '${value} 秒';
	@override String get double_speed => '2 倍';
}

// Path: comment
class _TranslationsCommentZhCn extends TranslationsCommentEn {
	_TranslationsCommentZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get comment => '评论';
	@override String get comments => '评论';
	@override String get comment_detail => '评论详情';
	@override String get edit_comment => '编辑评论';
	@override String get delete_comment => '删除评论';
	@override String get reply => '回复';
	@override String replies_in_total({required Object numReply}) => '共 ${numReply} 条回复';
	@override String show_all_replies({required Object numReply}) => '显示全部 ${numReply} 条回复';
}

// Path: user
class _TranslationsUserZhCn extends TranslationsUserEn {
	_TranslationsUserZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get following => '关注中';
	@override String get history => '历史记录';
	@override String get blocked_tags => '屏蔽标签';
	@override String get friends => '好友';
	@override String get downloads => '缓存';
	@override String get favorites => '收藏';
	@override String get playlists => '播放列表';
	@override String get settings => '设置';
	@override String get about => '关于';
}

// Path: friend
class _TranslationsFriendZhCn extends TranslationsFriendEn {
	_TranslationsFriendZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get friend_requests => '好友请求';
	@override String get add_friend => '添加好友';
	@override String get pending => '待处理';
	@override String get unfriend => '解除好友';
	@override String get accept => '接受';
	@override String get reject => '拒绝';
}

// Path: blocked_tags
class _TranslationsBlockedTagsZhCn extends TranslationsBlockedTagsEn {
	_TranslationsBlockedTagsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get add_blocked_tag => '添加屏蔽标签';
	@override String get blocked_tag => '屏蔽标签';
}

// Path: download
class _TranslationsDownloadZhCn extends TranslationsDownloadEn {
	_TranslationsDownloadZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get create_download_task => '创建下载任务';
	@override String get unknown => '未知';
	@override String get enqueued => '等待中';
	@override String get downloading => '下载中';
	@override String get paused => '已暂停';
	@override String get finished => '已完成';
	@override String get failed => '下载失败';
	@override String get retry => '重新下载';
	@override String get delete => '删除下载任务';
	@override String get pause => '暂停';
	@override String get resume => '继续';
	@override String get open_with => '用...打开';
	@override String get jump_to_detail => '查看详情页';
}

// Path: playlist
class _TranslationsPlaylistZhCn extends TranslationsPlaylistEn {
	_TranslationsPlaylistZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title => '播放列表标题';
	@override String get create => '创建播放列表';
	@override String get select => '选择播放列表';
	@override String get edit_title => '编辑标题';
	@override String videos_count({required Object numVideo}) => '${numVideo} 个视频';
	@override String videos_count_plural({required Object numVideo}) => '${numVideo} 个视频';
}

// Path: channel
class _TranslationsChannelZhCn extends TranslationsChannelEn {
	_TranslationsChannelZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get administration => '管理者';
	@override String get announcements => '公告';
	@override String get feedback => '反馈';
	@override String get support => '支持';
	@override String get global => '常规';
	@override String get general => '普通';
	@override String get guides => '指南';
	@override String get questions => '帮助/问题';
	@override String get requests => '请求';
	@override String get sharing => '分享';
	@override String label({required Object numThread, required Object numPosts}) => '${numThread} 个帖子 ${numPosts} 个回复';
}

// Path: create_thread
class _TranslationsCreateThreadZhCn extends TranslationsCreateThreadEn {
	_TranslationsCreateThreadZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get create_thread => '发帖';
	@override String get title => '标题';
	@override String get content => '内容';
}

// Path: notifications
class _TranslationsNotificationsZhCn extends TranslationsNotificationsEn {
	_TranslationsNotificationsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get ok => '好的';
	@override String get success => '成功';
	@override String get error => '错误';
	@override String get loading => '加载中...';
	@override String get cancel => '取消';
	@override String get confirm => '确认';
	@override String get apply => '应用';
}

// Path: settings
class _TranslationsSettingsZhCn extends TranslationsSettingsEn {
	_TranslationsSettingsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get appearance => '外观设置';
	@override String get theme => '主题';
	@override String get theme_desc => '设置应用的主题';
	@override String get dynamic_color => '动态取色';
	@override String get dynamic_color_desc => '根据内容动态更改应用的颜色';
	@override String get custom_color => '自定义颜色';
	@override String get custom_color_desc => '自定义应用的主题色';
	@override String get language => '语言';
	@override String get language_desc => '设置应用的语言';
	@override String get display_mode => '显示模式';
	@override String get display_mode_desc => '设置应用的显示模式';
	@override String get work_mode => '工作模式';
	@override String get work_mode_desc => '隐藏所有 NSFW 内容的封面';
	@override String get network => '网络设置';
	@override String get enable_proxy => '启用代理';
	@override String get enable_proxy_desc => '启用代理服务';
	@override String get proxy => '代理设置';
	@override String get proxy_desc => '设置代理服务器';
	@override String get player => '播放器设置';
	@override String get autoplay => '自动播放';
	@override String get autoplay_desc => '打开视频页面时自动播放视频';
	@override String get background_play => '后台播放';
	@override String get background_play_desc => '允许应用在后台播放视频';
	@override String get download => '下载设置';
	@override String get download_path => '下载路径';
	@override String get allow_media_scan => '允许媒体扫描';
	@override String get allow_media_scan_desc => '允许媒体扫描程序读取下载的媒体文件';
	@override String get logging => '日志设置';
	@override String get enable_logging => '启用日志';
	@override String get enable_logging_desc => '启用应用的日志记录';
	@override String get clear_log => '清除日志';
	@override String clear_log_desc({required Object size}) => '当前日志大小: ${size}';
	@override String get enable_verbose_logging => '启用详细日志';
	@override String get enable_verbose_logging_desc => '记录更详细的日志';
	@override String get about => '关于';
	@override String get check_update => '检查更新';
	@override String get check_update_desc => '检查是否有新版本可用';
	@override String get third_party_license => '第三方库许可';
	@override String get third_party_license_desc => '查看第三方库的许可证';
}

// Path: theme
class _TranslationsThemeZhCn extends TranslationsThemeEn {
	_TranslationsThemeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get system => '跟随系统';
	@override String get light => '浅色';
	@override String get dark => '深色';
}

// Path: colors
class _TranslationsColorsZhCn extends TranslationsColorsEn {
	_TranslationsColorsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get pink => '粉红';
	@override String get red => '红色';
	@override String get orange => '橙色';
	@override String get amber => '琥珀';
	@override String get yellow => '黄色';
	@override String get lime => '绿黄';
	@override String get lightGreen => '浅绿';
	@override String get green => '绿色';
	@override String get teal => '青色';
	@override String get cyan => '青绿';
	@override String get lightBlue => '浅蓝';
	@override String get blue => '蓝色';
	@override String get indigo => '靛蓝';
	@override String get purple => '紫色';
	@override String get deepPurple => '深紫';
	@override String get blueGrey => '蓝灰';
	@override String get brown => '棕色';
	@override String get grey => '灰色';
}

// Path: display_mode
class _TranslationsDisplayModeZhCn extends TranslationsDisplayModeEn {
	_TranslationsDisplayModeZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get no_available => '无可用显示模式';
	@override String get auto => '自动';
	@override String get system => '系统';
}

// Path: proxy
class _TranslationsProxyZhCn extends TranslationsProxyEn {
	_TranslationsProxyZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get host => '主机名';
	@override String get port => '端口';
}

// Path: message
class _TranslationsMessageZhCn extends TranslationsMessageEn {
	_TranslationsMessageZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get exit_app => '再按一次退出应用';
	@override String get are_you_sure_to_do_that => '你确定要这么做吗？';
	@override String get restart_required => '重启后生效';
	@override String get please_type_host => '请输入主机名';
	@override String get please_type_port => '请输入端口';
	@override late final _TranslationsMessageAccountZhCn account = _TranslationsMessageAccountZhCn._(_root);
	@override late final _TranslationsMessageCommentZhCn comment = _TranslationsMessageCommentZhCn._(_root);
	@override late final _TranslationsMessageCreateThreadZhCn create_thread = _TranslationsMessageCreateThreadZhCn._(_root);
	@override late final _TranslationsMessageBlockedTagsZhCn blocked_tags = _TranslationsMessageBlockedTagsZhCn._(_root);
	@override late final _TranslationsMessagePlaylistZhCn playlist = _TranslationsMessagePlaylistZhCn._(_root);
	@override late final _TranslationsMessageDownloadZhCn download = _TranslationsMessageDownloadZhCn._(_root);
	@override late final _TranslationsMessageUpdateZhCn update = _TranslationsMessageUpdateZhCn._(_root);
}

// Path: error
class _TranslationsErrorZhCn extends TranslationsErrorEn {
	_TranslationsErrorZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get retry => '加载失败，点击重试';
	@override String get fetch_failed => '无法获取视频链接';
	@override String get fetch_user_info_failed => '无法获取用户信息';
	@override String get invalid_path => '无效的路径';
	@override late final _TranslationsErrorAccountZhCn account = _TranslationsErrorAccountZhCn._(_root);
}

// Path: search.history
class _TranslationsSearchHistoryZhCn extends TranslationsSearchHistoryEn {
	_TranslationsSearchHistoryZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get delete => '删除所有记录';
}

// Path: player.aspect_ratios
class _TranslationsPlayerAspectRatiosZhCn extends TranslationsPlayerAspectRatiosEn {
	_TranslationsPlayerAspectRatiosZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get contain => '包含';
	@override String get cover => '覆盖';
	@override String get fill => '填充';
	@override String get fit_height => '适应高度';
	@override String get fit_width => '适应宽度';
	@override String get scale_down => '缩小适应';
}

// Path: message.account
class _TranslationsMessageAccountZhCn extends TranslationsMessageAccountEn {
	_TranslationsMessageAccountZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get login_success => '登入成功！';
	@override String get register_success => '注册成功，请查看邮箱激活账号。';
	@override String get login_password_longer_than_6 => '密码长度至少为 6 位';
	@override String get please_type_email => '请输入邮箱';
	@override String get please_type_email_or_username => '请输入邮箱或用户名';
	@override String get please_type_valid_email => '请输入正确的邮箱';
	@override String get please_type_password => '请输入密码';
	@override String get please_type_captcha => '请输入验证码';
}

// Path: message.comment
class _TranslationsMessageCommentZhCn extends TranslationsMessageCommentEn {
	_TranslationsMessageCommentZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get content_empty => '内容不能为空。';
	@override String get content_too_long => '内容不能超过 1000 个字符。';
	@override String get sent => '回复已发送。';
}

// Path: message.create_thread
class _TranslationsMessageCreateThreadZhCn extends TranslationsMessageCreateThreadEn {
	_TranslationsMessageCreateThreadZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get title_empty => '标题不能为空。';
	@override String get title_too_long => '标题不能过长。';
	@override String get content_empty => '内容不能为空。';
	@override String get content_too_long => '内容不能超过 20000 个字符。';
	@override String get created => '帖子已发送。';
}

// Path: message.blocked_tags
class _TranslationsMessageBlockedTagsZhCn extends TranslationsMessageBlockedTagsEn {
	_TranslationsMessageBlockedTagsZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get save_confirm => '确定保存屏蔽标签吗？';
	@override String get saved => '屏蔽标签已保存。';
	@override String get reached_limit => '屏蔽标签数量已达到上限。';
}

// Path: message.playlist
class _TranslationsMessagePlaylistZhCn extends TranslationsMessagePlaylistEn {
	_TranslationsMessagePlaylistZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get empty_playlist_title => '播放列表标题不能为空。';
	@override String get playlist_created => '播放列表已创建。';
	@override String get playlist_title_edited => '播放列表标题已修改。';
}

// Path: message.download
class _TranslationsMessageDownloadZhCn extends TranslationsMessageDownloadEn {
	_TranslationsMessageDownloadZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get no_provide_storage_permission => '未提供存储权限。';
	@override String get task_already_exists => '下载任务已存在。';
	@override String get task_created => '下载任务已创建。';
	@override String get maximum_simultaneous_download_reached => '已达到最大同时下载数。';
}

// Path: message.update
class _TranslationsMessageUpdateZhCn extends TranslationsMessageUpdateEn {
	_TranslationsMessageUpdateZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get check_update_failed => '检查更新失败';
	@override String get update_available => '有新版本可用';
	@override String get already_latest_version => '已是最新版本';
	@override String current_version({required Object version}) => '当前版本：${version}';
	@override String latest_version({required Object version}) => '最新版本：${version}';
	@override String get view_update => '查看更新';
}

// Path: error.account
class _TranslationsErrorAccountZhCn extends TranslationsErrorAccountEn {
	_TranslationsErrorAccountZhCn._(TranslationsZhCn root) : this._root = root, super.internal(root);

	final TranslationsZhCn _root; // ignore: unused_field

	// Translations
	@override String get invalid_login => '邮箱或密码错误';
	@override String get invalid_host => '无效的主机名';
	@override String get invalid_captcha => '验证码错误';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhCn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'nav.subscriptions': return '订阅';
			case 'nav.videos': return '视频';
			case 'nav.images': return '图片';
			case 'nav.forum': return '论坛';
			case 'nav.search': return '搜索';
			case 'rules.title': return '规则';
			case 'rules.accept': return '接受';
			case 'rules.accept_desc': return '我同意：已阅读规则并且会随时留意未来的规则变更。';
			case 'common.video': return '视频';
			case 'common.image': return '图片';
			case 'common.collapse': return '收起';
			case 'common.expand': return '展开';
			case 'common.translate': return '翻译';
			case 'common.open': return '打开';
			case 'refresh.empty': return '空空如也';
			case 'refresh.drag_to_load': return '下拉加载';
			case 'refresh.release_to_load': return '释放加载';
			case 'refresh.success': return '加载成功';
			case 'refresh.failed': return '加载失败';
			case 'refresh.no_more': return '没有更多了';
			case 'refresh.last_load': return '上次加载于 %T';
			case 'records.select_all': return '全选';
			case 'records.select_inverse': return '反选';
			case 'records.selected_num': return ({required Object num}) => '已选 ${num} 项';
			case 'records.multiple_selection_mode': return '多选模式';
			case 'records.delete': return '删除';
			case 'records.delete_all': return '删除所有';
			case 'account.captcha': return '验证码';
			case 'account.login': return '登录';
			case 'account.logout': return '登出';
			case 'account.register': return '注册';
			case 'account.email': return '邮箱';
			case 'account.email_or_username': return '邮箱或用户名';
			case 'account.password': return '密码';
			case 'account.forgot_password': return '忘记密码';
			case 'account.require_login': return '请先登录';
			case 'profile.profile': return '个人资料';
			case 'profile.follow': return '关注';
			case 'profile.followers': return '粉丝';
			case 'profile.following': return '关注中';
			case 'profile.nickname': return '昵称';
			case 'profile.username': return '用户名';
			case 'profile.user_id': return '用户 ID';
			case 'profile.description': return '个人简介';
			case 'profile.no_description': return '该用户是个神秘人，不喜欢被人围观。';
			case 'profile.join_date': return '加入时间';
			case 'profile.last_active_time': return '最后在线时间';
			case 'profile.online': return '在线';
			case 'profile.message': return '私信';
			case 'profile.guestbook': return '留言板';
			case 'profile.view_more': return '查看更多';
			case 'sort.latest': return '最新';
			case 'sort.trending': return '流行';
			case 'sort.popularity': return '人气';
			case 'sort.most_views': return '最多观看';
			case 'sort.most_likes': return '最多点赞';
			case 'filter.all': return '全部';
			case 'filter.filter': return '筛选';
			case 'filter.rating': return '分级';
			case 'filter.tag': return '标签';
			case 'filter.tags': return '标签';
			case 'filter.date': return '日期';
			case 'filter.general': return '全年龄';
			case 'filter.ecchi': return '成人';
			case 'filter.select_rating': return '选择分级';
			case 'filter.select_year': return '选择年份';
			case 'filter.select_month': return '选择月份';
			case 'search.users': return '用户';
			case 'search.search': return '搜索';
			case 'search.history.delete': return '删除所有记录';
			case 'time.seconds_ago': return ({required Object time}) => '${time} 秒前';
			case 'time.minutes_ago': return ({required Object time}) => '${time} 分钟前';
			case 'time.hours_ago': return ({required Object time}) => '${time} 小时前';
			case 'time.days_ago': return ({required Object time}) => '${time} 天前';
			case 'media.private': return '私有';
			case 'media.add_to_playlist': return '添加到播放列表';
			case 'media.external_video': return '外部视频';
			case 'media.share': return '分享';
			case 'media.download': return '下载';
			case 'media.more_from': return ({required Object username}) => '更多来自 ${username}';
			case 'media.more_like_this': return '类似作品';
			case 'media.updated_at': return ({required Object time}) => '更新于 ${time}';
			case 'player.current_item': return ({required Object item}) => '当前: ${item}';
			case 'player.quality': return '画质';
			case 'player.select_quality': return '选择画质';
			case 'player.playback_speed': return '播放速度';
			case 'player.select_playback_speed': return '选择播放速度';
			case 'player.aspect_ratio': return '宽高比';
			case 'player.select_aspect_ratio': return '选择宽高比';
			case 'player.aspect_ratios.contain': return '包含';
			case 'player.aspect_ratios.cover': return '覆盖';
			case 'player.aspect_ratios.fill': return '填充';
			case 'player.aspect_ratios.fit_height': return '适应高度';
			case 'player.aspect_ratios.fit_width': return '适应宽度';
			case 'player.aspect_ratios.scale_down': return '缩小适应';
			case 'player.seconds': return ({required Object value}) => '${value} 秒';
			case 'player.double_speed': return '2 倍';
			case 'comment.comment': return '评论';
			case 'comment.comments': return '评论';
			case 'comment.comment_detail': return '评论详情';
			case 'comment.edit_comment': return '编辑评论';
			case 'comment.delete_comment': return '删除评论';
			case 'comment.reply': return '回复';
			case 'comment.replies_in_total': return ({required Object numReply}) => '共 ${numReply} 条回复';
			case 'comment.show_all_replies': return ({required Object numReply}) => '显示全部 ${numReply} 条回复';
			case 'user.following': return '关注中';
			case 'user.history': return '历史记录';
			case 'user.blocked_tags': return '屏蔽标签';
			case 'user.friends': return '好友';
			case 'user.downloads': return '缓存';
			case 'user.favorites': return '收藏';
			case 'user.playlists': return '播放列表';
			case 'user.settings': return '设置';
			case 'user.about': return '关于';
			case 'friend.friend_requests': return '好友请求';
			case 'friend.add_friend': return '添加好友';
			case 'friend.pending': return '待处理';
			case 'friend.unfriend': return '解除好友';
			case 'friend.accept': return '接受';
			case 'friend.reject': return '拒绝';
			case 'blocked_tags.add_blocked_tag': return '添加屏蔽标签';
			case 'blocked_tags.blocked_tag': return '屏蔽标签';
			case 'download.create_download_task': return '创建下载任务';
			case 'download.unknown': return '未知';
			case 'download.enqueued': return '等待中';
			case 'download.downloading': return '下载中';
			case 'download.paused': return '已暂停';
			case 'download.finished': return '已完成';
			case 'download.failed': return '下载失败';
			case 'download.retry': return '重新下载';
			case 'download.delete': return '删除下载任务';
			case 'download.pause': return '暂停';
			case 'download.resume': return '继续';
			case 'download.open_with': return '用...打开';
			case 'download.jump_to_detail': return '查看详情页';
			case 'playlist.title': return '播放列表标题';
			case 'playlist.create': return '创建播放列表';
			case 'playlist.select': return '选择播放列表';
			case 'playlist.edit_title': return '编辑标题';
			case 'playlist.videos_count': return ({required Object numVideo}) => '${numVideo} 个视频';
			case 'playlist.videos_count_plural': return ({required Object numVideo}) => '${numVideo} 个视频';
			case 'channel.administration': return '管理者';
			case 'channel.announcements': return '公告';
			case 'channel.feedback': return '反馈';
			case 'channel.support': return '支持';
			case 'channel.global': return '常规';
			case 'channel.general': return '普通';
			case 'channel.guides': return '指南';
			case 'channel.questions': return '帮助/问题';
			case 'channel.requests': return '请求';
			case 'channel.sharing': return '分享';
			case 'channel.label': return ({required Object numThread, required Object numPosts}) => '${numThread} 个帖子 ${numPosts} 个回复';
			case 'create_thread.create_thread': return '发帖';
			case 'create_thread.title': return '标题';
			case 'create_thread.content': return '内容';
			case 'notifications.ok': return '好的';
			case 'notifications.success': return '成功';
			case 'notifications.error': return '错误';
			case 'notifications.loading': return '加载中...';
			case 'notifications.cancel': return '取消';
			case 'notifications.confirm': return '确认';
			case 'notifications.apply': return '应用';
			case 'settings.appearance': return '外观设置';
			case 'settings.theme': return '主题';
			case 'settings.theme_desc': return '设置应用的主题';
			case 'settings.dynamic_color': return '动态取色';
			case 'settings.dynamic_color_desc': return '根据内容动态更改应用的颜色';
			case 'settings.custom_color': return '自定义颜色';
			case 'settings.custom_color_desc': return '自定义应用的主题色';
			case 'settings.language': return '语言';
			case 'settings.language_desc': return '设置应用的语言';
			case 'settings.display_mode': return '显示模式';
			case 'settings.display_mode_desc': return '设置应用的显示模式';
			case 'settings.work_mode': return '工作模式';
			case 'settings.work_mode_desc': return '隐藏所有 NSFW 内容的封面';
			case 'settings.network': return '网络设置';
			case 'settings.enable_proxy': return '启用代理';
			case 'settings.enable_proxy_desc': return '启用代理服务';
			case 'settings.proxy': return '代理设置';
			case 'settings.proxy_desc': return '设置代理服务器';
			case 'settings.player': return '播放器设置';
			case 'settings.autoplay': return '自动播放';
			case 'settings.autoplay_desc': return '打开视频页面时自动播放视频';
			case 'settings.background_play': return '后台播放';
			case 'settings.background_play_desc': return '允许应用在后台播放视频';
			case 'settings.download': return '下载设置';
			case 'settings.download_path': return '下载路径';
			case 'settings.allow_media_scan': return '允许媒体扫描';
			case 'settings.allow_media_scan_desc': return '允许媒体扫描程序读取下载的媒体文件';
			case 'settings.logging': return '日志设置';
			case 'settings.enable_logging': return '启用日志';
			case 'settings.enable_logging_desc': return '启用应用的日志记录';
			case 'settings.clear_log': return '清除日志';
			case 'settings.clear_log_desc': return ({required Object size}) => '当前日志大小: ${size}';
			case 'settings.enable_verbose_logging': return '启用详细日志';
			case 'settings.enable_verbose_logging_desc': return '记录更详细的日志';
			case 'settings.about': return '关于';
			case 'settings.check_update': return '检查更新';
			case 'settings.check_update_desc': return '检查是否有新版本可用';
			case 'settings.third_party_license': return '第三方库许可';
			case 'settings.third_party_license_desc': return '查看第三方库的许可证';
			case 'theme.system': return '跟随系统';
			case 'theme.light': return '浅色';
			case 'theme.dark': return '深色';
			case 'colors.pink': return '粉红';
			case 'colors.red': return '红色';
			case 'colors.orange': return '橙色';
			case 'colors.amber': return '琥珀';
			case 'colors.yellow': return '黄色';
			case 'colors.lime': return '绿黄';
			case 'colors.lightGreen': return '浅绿';
			case 'colors.green': return '绿色';
			case 'colors.teal': return '青色';
			case 'colors.cyan': return '青绿';
			case 'colors.lightBlue': return '浅蓝';
			case 'colors.blue': return '蓝色';
			case 'colors.indigo': return '靛蓝';
			case 'colors.purple': return '紫色';
			case 'colors.deepPurple': return '深紫';
			case 'colors.blueGrey': return '蓝灰';
			case 'colors.brown': return '棕色';
			case 'colors.grey': return '灰色';
			case 'display_mode.no_available': return '无可用显示模式';
			case 'display_mode.auto': return '自动';
			case 'display_mode.system': return '系统';
			case 'proxy.host': return '主机名';
			case 'proxy.port': return '端口';
			case 'message.exit_app': return '再按一次退出应用';
			case 'message.are_you_sure_to_do_that': return '你确定要这么做吗？';
			case 'message.restart_required': return '重启后生效';
			case 'message.please_type_host': return '请输入主机名';
			case 'message.please_type_port': return '请输入端口';
			case 'message.account.login_success': return '登入成功！';
			case 'message.account.register_success': return '注册成功，请查看邮箱激活账号。';
			case 'message.account.login_password_longer_than_6': return '密码长度至少为 6 位';
			case 'message.account.please_type_email': return '请输入邮箱';
			case 'message.account.please_type_email_or_username': return '请输入邮箱或用户名';
			case 'message.account.please_type_valid_email': return '请输入正确的邮箱';
			case 'message.account.please_type_password': return '请输入密码';
			case 'message.account.please_type_captcha': return '请输入验证码';
			case 'message.comment.content_empty': return '内容不能为空。';
			case 'message.comment.content_too_long': return '内容不能超过 1000 个字符。';
			case 'message.comment.sent': return '回复已发送。';
			case 'message.create_thread.title_empty': return '标题不能为空。';
			case 'message.create_thread.title_too_long': return '标题不能过长。';
			case 'message.create_thread.content_empty': return '内容不能为空。';
			case 'message.create_thread.content_too_long': return '内容不能超过 20000 个字符。';
			case 'message.create_thread.created': return '帖子已发送。';
			case 'message.blocked_tags.save_confirm': return '确定保存屏蔽标签吗？';
			case 'message.blocked_tags.saved': return '屏蔽标签已保存。';
			case 'message.blocked_tags.reached_limit': return '屏蔽标签数量已达到上限。';
			case 'message.playlist.empty_playlist_title': return '播放列表标题不能为空。';
			case 'message.playlist.playlist_created': return '播放列表已创建。';
			case 'message.playlist.playlist_title_edited': return '播放列表标题已修改。';
			case 'message.download.no_provide_storage_permission': return '未提供存储权限。';
			case 'message.download.task_already_exists': return '下载任务已存在。';
			case 'message.download.task_created': return '下载任务已创建。';
			case 'message.download.maximum_simultaneous_download_reached': return '已达到最大同时下载数。';
			case 'message.update.check_update_failed': return '检查更新失败';
			case 'message.update.update_available': return '有新版本可用';
			case 'message.update.already_latest_version': return '已是最新版本';
			case 'message.update.current_version': return ({required Object version}) => '当前版本：${version}';
			case 'message.update.latest_version': return ({required Object version}) => '最新版本：${version}';
			case 'message.update.view_update': return '查看更新';
			case 'error.retry': return '加载失败，点击重试';
			case 'error.fetch_failed': return '无法获取视频链接';
			case 'error.fetch_user_info_failed': return '无法获取用户信息';
			case 'error.invalid_path': return '无效的路径';
			case 'error.account.invalid_login': return '邮箱或密码错误';
			case 'error.account.invalid_host': return '无效的主机名';
			case 'error.account.invalid_captcha': return '验证码错误';
			default: return null;
		}
	}
}

