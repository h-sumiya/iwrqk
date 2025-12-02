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
class TranslationsJa extends Translations with BaseTranslations<AppLocale, Translations> {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ),
		  super(cardinalResolver: cardinalResolver, ordinalResolver: ordinalResolver) {
		super.$meta.setFlatMapFunction($meta.getTranslation); // copy base translations to super.$meta
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key) ?? super.$meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	@override 
	TranslationsJa $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsJa(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsNavJa nav = _TranslationsNavJa._(_root);
	@override late final _TranslationsRulesJa rules = _TranslationsRulesJa._(_root);
	@override late final _TranslationsCommonJa common = _TranslationsCommonJa._(_root);
	@override late final _TranslationsRefreshJa refresh = _TranslationsRefreshJa._(_root);
	@override late final _TranslationsRecordsJa records = _TranslationsRecordsJa._(_root);
	@override late final _TranslationsAccountJa account = _TranslationsAccountJa._(_root);
	@override late final _TranslationsProfileJa profile = _TranslationsProfileJa._(_root);
	@override late final _TranslationsSortJa sort = _TranslationsSortJa._(_root);
	@override late final _TranslationsFilterJa filter = _TranslationsFilterJa._(_root);
	@override late final _TranslationsSearchJa search = _TranslationsSearchJa._(_root);
	@override late final _TranslationsTimeJa time = _TranslationsTimeJa._(_root);
	@override late final _TranslationsMediaJa media = _TranslationsMediaJa._(_root);
	@override late final _TranslationsPlayerJa player = _TranslationsPlayerJa._(_root);
	@override late final _TranslationsCommentJa comment = _TranslationsCommentJa._(_root);
	@override late final _TranslationsUserJa user = _TranslationsUserJa._(_root);
	@override late final _TranslationsFriendJa friend = _TranslationsFriendJa._(_root);
	@override late final _TranslationsBlockedTagsJa blocked_tags = _TranslationsBlockedTagsJa._(_root);
	@override late final _TranslationsDownloadJa download = _TranslationsDownloadJa._(_root);
	@override late final _TranslationsPlaylistJa playlist = _TranslationsPlaylistJa._(_root);
	@override late final _TranslationsChannelJa channel = _TranslationsChannelJa._(_root);
	@override late final _TranslationsCreateThreadJa create_thread = _TranslationsCreateThreadJa._(_root);
	@override late final _TranslationsNotificationsJa notifications = _TranslationsNotificationsJa._(_root);
	@override late final _TranslationsSettingsJa settings = _TranslationsSettingsJa._(_root);
	@override late final _TranslationsThemeJa theme = _TranslationsThemeJa._(_root);
	@override late final _TranslationsColorsJa colors = _TranslationsColorsJa._(_root);
	@override late final _TranslationsDisplayModeJa display_mode = _TranslationsDisplayModeJa._(_root);
	@override late final _TranslationsProxyJa proxy = _TranslationsProxyJa._(_root);
	@override late final _TranslationsMessageJa message = _TranslationsMessageJa._(_root);
	@override late final _TranslationsErrorJa error = _TranslationsErrorJa._(_root);
}

// Path: nav
class _TranslationsNavJa extends TranslationsNavEn {
	_TranslationsNavJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get subscriptions => 'サブスク';
	@override String get videos => '動画';
	@override String get images => '画像';
	@override String get forum => 'フォーラム';
	@override String get search => '検索';
}

// Path: rules
class _TranslationsRulesJa extends TranslationsRulesEn {
	_TranslationsRulesJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ルール';
	@override String get accept => '同意する';
	@override String get accept_desc => '私はルールを読み、これに同意し、今後のルール変更についても、最新の情報を確認することに同意します。';
}

// Path: common
class _TranslationsCommonJa extends TranslationsCommonEn {
	_TranslationsCommonJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get video => '動画';
	@override String get image => '画像';
	@override String get collapse => '折りたたむ';
	@override String get expand => '展開';
	@override String get translate => '翻訳';
	@override String get open => '開く';
}

// Path: refresh
class _TranslationsRefreshJa extends TranslationsRefreshEn {
	_TranslationsRefreshJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get empty => '何もありません';
	@override String get drag_to_load => '引っ張って読み込む';
	@override String get release_to_load => 'リリースして読み込む';
	@override String get success => '読み込み成功';
	@override String get failed => '読み込み失敗';
	@override String get no_more => 'これ以上なし';
	@override String get last_load => '前回の読み込み： %T';
}

// Path: records
class _TranslationsRecordsJa extends TranslationsRecordsEn {
	_TranslationsRecordsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get select_all => 'すべて選択';
	@override String get select_inverse => '逆選択';
	@override String selected_num({required Object num}) => '選択済み ${num} 項目';
	@override String get multiple_selection_mode => '複数選択モード';
	@override String get delete => '削除';
	@override String get delete_all => 'すべて削除';
}

// Path: account
class _TranslationsAccountJa extends TranslationsAccountEn {
	_TranslationsAccountJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get captcha => 'キャプチャ';
	@override String get login => 'ログイン';
	@override String get logout => 'ログアウト';
	@override String get register => '登録';
	@override String get email => 'メール';
	@override String get email_or_username => 'メールまたはユーザー名';
	@override String get password => 'パスワード';
	@override String get forgot_password => 'パスワードを忘れた';
	@override String get require_login => 'ログインしてください';
}

// Path: profile
class _TranslationsProfileJa extends TranslationsProfileEn {
	_TranslationsProfileJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get profile => 'プロフィール';
	@override String get follow => 'フォロー';
	@override String get followers => 'フォロワー';
	@override String get following => 'フォロー中';
	@override String get nickname => 'ニックネーム';
	@override String get username => 'ユーザー名';
	@override String get user_id => 'ユーザーID';
	@override String get description => '自己紹介';
	@override String get no_description => '自分の周りに謎の空気を漂わせるのが好きです。';
	@override String get join_date => '参加日';
	@override String get last_active_time => '最終アクティブ時間';
	@override String get online => 'オンライン';
	@override String get message => 'メッセージ';
	@override String get guestbook => 'ゲストブック';
	@override String get view_more => 'もっと見る';
}

// Path: sort
class _TranslationsSortJa extends TranslationsSortEn {
	_TranslationsSortJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get latest => '最新';
	@override String get trending => 'トレンド';
	@override String get popularity => '人気順';
	@override String get most_views => '閲覧数';
	@override String get most_likes => 'お気に入り数';
}

// Path: filter
class _TranslationsFilterJa extends TranslationsFilterEn {
	_TranslationsFilterJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get all => 'すべて';
	@override String get filter => 'フィルター';
	@override String get rating => 'レーティング';
	@override String get tag => 'タグ';
	@override String get tags => 'タグ';
	@override String get date => '日付';
	@override String get general => '一般';
	@override String get ecchi => 'エッチ';
	@override String get select_rating => 'レーティングを選択';
	@override String get select_year => '年を選択';
	@override String get select_month => '月を選択';
}

// Path: search
class _TranslationsSearchJa extends TranslationsSearchEn {
	_TranslationsSearchJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get users => 'ユーザー';
	@override String get search => '検索';
	@override late final _TranslationsSearchHistoryJa history = _TranslationsSearchHistoryJa._(_root);
}

// Path: time
class _TranslationsTimeJa extends TranslationsTimeEn {
	_TranslationsTimeJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String seconds_ago({required Object time}) => '${time} 秒前';
	@override String minutes_ago({required Object time}) => '${time} 分前';
	@override String hours_ago({required Object time}) => '${time} 時間前';
	@override String days_ago({required Object time}) => '${time} 日前';
}

// Path: media
class _TranslationsMediaJa extends TranslationsMediaEn {
	_TranslationsMediaJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get private => 'プライベート';
	@override String get add_to_playlist => 'プレイリストに追加';
	@override String get external_video => '外部動画';
	@override String get share => '共有';
	@override String get download => 'ダウンロード';
	@override String more_from({required Object username}) => '${username} からのその他';
	@override String get more_like_this => '同様の作品';
	@override String updated_at({required Object time}) => '${time} に更新';
	@override String get detail => '詳細';
	@override String get comments => 'コメント';
}

// Path: player
class _TranslationsPlayerJa extends TranslationsPlayerEn {
	_TranslationsPlayerJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String current_item({required Object item}) => '現在：${item}';
	@override String get quality => '画質';
	@override String get select_quality => '画質を選択';
	@override String get playback_speed => '再生速度';
	@override String get select_playback_speed => '再生速度を選択';
	@override String get aspect_ratio => 'アスペクト比';
	@override String get select_aspect_ratio => 'アスペクト比を選択';
	@override late final _TranslationsPlayerAspectRatiosJa aspect_ratios = _TranslationsPlayerAspectRatiosJa._(_root);
	@override String seconds({required Object value}) => '${value} 秒';
	@override String get double_speed => '2 倍';
}

// Path: comment
class _TranslationsCommentJa extends TranslationsCommentEn {
	_TranslationsCommentJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get comment => 'コメント';
	@override String get comments => 'コメント';
	@override String get comment_detail => 'コメントの詳細';
	@override String get edit_comment => 'コメントの編集';
	@override String get delete_comment => 'コメントの削除';
	@override String get reply => '返信';
	@override String replies_in_total({required Object numReply}) => '合計 ${numReply} 件の返信';
	@override String show_all_replies({required Object numReply}) => 'すべての ${numReply} 件の返信を表示';
}

// Path: user
class _TranslationsUserJa extends TranslationsUserEn {
	_TranslationsUserJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get following => 'フォロー中';
	@override String get history => '履歴';
	@override String get blocked_tags => 'ブロックされたタグ';
	@override String get friends => '友達';
	@override String get downloads => 'ダウンロード';
	@override String get favorites => 'お気に入り';
	@override String get playlists => 'プレイリスト';
	@override String get settings => '設定';
	@override String get about => 'について';
}

// Path: friend
class _TranslationsFriendJa extends TranslationsFriendEn {
	_TranslationsFriendJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get friend_requests => '友達リクエスト';
	@override String get add_friend => '友達に追加';
	@override String get pending => '保留中';
	@override String get unfriend => '友達解除';
	@override String get accept => '承認';
	@override String get reject => '拒否';
}

// Path: blocked_tags
class _TranslationsBlockedTagsJa extends TranslationsBlockedTagsEn {
	_TranslationsBlockedTagsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get add_blocked_tag => 'ブロックされたタグを追加';
	@override String get blocked_tag => 'ブロックされたタグ';
}

// Path: download
class _TranslationsDownloadJa extends TranslationsDownloadEn {
	_TranslationsDownloadJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get create_download_task => 'ダウンロードタスクの作成';
	@override String get unknown => '不明';
	@override String get enqueued => '待機中';
	@override String get downloading => 'ダウンロード中';
	@override String get paused => '一時停止済み';
	@override String get finished => '完了';
	@override String get failed => 'ダウンロード失敗';
	@override String get retry => '再試行';
	@override String get delete => '削除';
	@override String get pause => '一時停止';
	@override String get resume => '再開';
	@override String get open_with => '開く';
	@override String get jump_to_detail => '詳細ページに移動';
}

// Path: playlist
class _TranslationsPlaylistJa extends TranslationsPlaylistEn {
	_TranslationsPlaylistJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プレイリストのタイトル';
	@override String get create => 'プレイリストの作成';
	@override String get select => 'プレイリストの選択';
	@override String get edit_title => 'タイトルを編集';
	@override String videos_count({required Object numVideo}) => '${numVideo} 本のビデオ';
	@override String videos_count_plural({required Object numVideo}) => '${numVideo} 本のビデオ';
}

// Path: channel
class _TranslationsChannelJa extends TranslationsChannelEn {
	_TranslationsChannelJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get administration => '管理者';
	@override String get announcements => 'お知らせ';
	@override String get feedback => 'フィードバック';
	@override String get support => 'サポート';
	@override String get global => '一般';
	@override String get general => '一般';
	@override String get guides => 'ガイド';
	@override String get questions => 'ヘルプ/質問';
	@override String get requests => 'リクエスト';
	@override String get sharing => '共有';
	@override String label({required Object numThread, required Object numPosts}) => '${numThread} 本のスレッド ${numPosts} 本の返信';
}

// Path: create_thread
class _TranslationsCreateThreadJa extends TranslationsCreateThreadEn {
	_TranslationsCreateThreadJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get create_thread => 'スレッドの作成';
	@override String get title => 'タイトル';
	@override String get content => '内容';
}

// Path: notifications
class _TranslationsNotificationsJa extends TranslationsNotificationsEn {
	_TranslationsNotificationsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get ok => 'OK';
	@override String get success => '成功';
	@override String get error => 'エラー';
	@override String get loading => '読み込み中...';
	@override String get cancel => 'キャンセル';
	@override String get confirm => '確認';
	@override String get apply => '適用';
}

// Path: settings
class _TranslationsSettingsJa extends TranslationsSettingsEn {
	_TranslationsSettingsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get appearance => '外観設定';
	@override String get theme => 'テーマ';
	@override String get theme_desc => 'アプリのテーマを設定します';
	@override String get dynamic_color => 'ダイナミックカラー';
	@override String get dynamic_color_desc => 'コンテンツに応じてアプリの色を変更します';
	@override String get custom_color => 'カスタムカラー';
	@override String get custom_color_desc => 'アプリのテーマカラーをカスタマイズします';
	@override String get language => '言語';
	@override String get language_desc => 'アプリの言語を設定します';
	@override String get display_mode => '表示モード';
	@override String get display_mode_desc => 'アプリの表示モードを設定します';
	@override String get work_mode => '作業モード';
	@override String get work_mode_desc => 'NSFW コンテンツのカバーを非表示にします';
	@override String get network => 'ネットワーク設定';
	@override String get enable_proxy => 'プロキシを有効にする';
	@override String get enable_proxy_desc => 'プロキシサービスを有効にします';
	@override String get proxy => 'プロキシ設定';
	@override String get proxy_desc => 'プロキシサーバーを設定します';
	@override String get player => 'プレイヤー設定';
	@override String get autoplay => '自動再生';
	@override String get autoplay_desc => 'ビデオページを開くときに自動でビデオを再生します';
	@override String get background_play => 'バックグラウンド再生';
	@override String get background_play_desc => 'アプリをバックグラウンドでビデオを再生することを許可します';
	@override String get download => 'ダウンロード設定';
	@override String get download_path => 'ダウンロードパス';
	@override String get allow_media_scan => 'メディアスキャンを許可';
	@override String get allow_media_scan_desc => 'ダウンロードしたメディアファイルをメディアスキャンアプリに読み取らせることを許可します';
	@override String get logging => 'ログ';
	@override String get enable_logging => 'ログを有効にする';
	@override String get enable_logging_desc => 'アプリのログを有効にします';
	@override String get clear_log => 'ログをクリア';
	@override String clear_log_desc({required Object size}) => '現在のログサイズ：${size}';
	@override String get enable_verbose_logging => '詳細なログを有効にする';
	@override String get enable_verbose_logging_desc => 'より詳細なログを記録します';
	@override String get about => '情報';
	@override String get check_update => '更新を確認';
	@override String get check_update_desc => '新しいバージョンが利用可能かどうかを確認します';
	@override String get third_party_license => 'サードパーティのライセンス';
	@override String get third_party_license_desc => 'サードパーティのライブラリのライセンスを確認します';
}

// Path: theme
class _TranslationsThemeJa extends TranslationsThemeEn {
	_TranslationsThemeJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get system => 'システムに従う';
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
}

// Path: colors
class _TranslationsColorsJa extends TranslationsColorsEn {
	_TranslationsColorsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get pink => 'ピンク';
	@override String get red => '赤';
	@override String get orange => 'オレンジ';
	@override String get amber => 'アンバー';
	@override String get yellow => '黄';
	@override String get lime => 'ライム';
	@override String get lightGreen => 'ライトグリーン';
	@override String get green => '緑';
	@override String get teal => 'ティール';
	@override String get cyan => 'シアン';
	@override String get lightBlue => 'ライトブルー';
	@override String get blue => '青';
	@override String get indigo => 'インディゴ';
	@override String get purple => '紫';
	@override String get deepPurple => 'ディープパープル';
	@override String get blueGrey => 'ブルーグレー';
	@override String get brown => '茶色';
	@override String get grey => 'グレー';
}

// Path: display_mode
class _TranslationsDisplayModeJa extends TranslationsDisplayModeEn {
	_TranslationsDisplayModeJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get no_available => '利用可能な表示モードはありません';
	@override String get auto => '自動';
	@override String get system => 'システム';
}

// Path: proxy
class _TranslationsProxyJa extends TranslationsProxyEn {
	_TranslationsProxyJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get host => 'ホスト名';
	@override String get port => 'ポート';
}

// Path: message
class _TranslationsMessageJa extends TranslationsMessageEn {
	_TranslationsMessageJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get exit_app => 'アプリを終了するにはもう一度押してください';
	@override String get are_you_sure_to_do_that => 'それを行うことを確認していますか？';
	@override String get restart_required => '再起動後に有効';
	@override String get please_type_host => 'ホスト名を入力してください';
	@override String get please_type_port => 'ポートを入力してください';
	@override late final _TranslationsMessageAccountJa account = _TranslationsMessageAccountJa._(_root);
	@override late final _TranslationsMessageCommentJa comment = _TranslationsMessageCommentJa._(_root);
	@override late final _TranslationsMessageCreateThreadJa create_thread = _TranslationsMessageCreateThreadJa._(_root);
	@override late final _TranslationsMessageBlockedTagsJa blocked_tags = _TranslationsMessageBlockedTagsJa._(_root);
	@override late final _TranslationsMessagePlaylistJa playlist = _TranslationsMessagePlaylistJa._(_root);
	@override late final _TranslationsMessageDownloadJa download = _TranslationsMessageDownloadJa._(_root);
	@override late final _TranslationsMessageUpdateJa update = _TranslationsMessageUpdateJa._(_root);
}

// Path: error
class _TranslationsErrorJa extends TranslationsErrorEn {
	_TranslationsErrorJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get retry => '読み込みに失敗しました。再試行する';
	@override String get fetch_failed => 'ビデオリンクを取得できません';
	@override String get fetch_user_info_failed => 'ユーザー情報を取得できません';
	@override String get invalid_path => '無効なパス';
	@override String get intercept_app_exit => 'アプリの終了をブロック';
	@override late final _TranslationsErrorAccountJa account = _TranslationsErrorAccountJa._(_root);
}

// Path: search.history
class _TranslationsSearchHistoryJa extends TranslationsSearchHistoryEn {
	_TranslationsSearchHistoryJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get delete => 'すべての記録を削除';
}

// Path: player.aspect_ratios
class _TranslationsPlayerAspectRatiosJa extends TranslationsPlayerAspectRatiosEn {
	_TranslationsPlayerAspectRatiosJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get contain => '含む';
	@override String get cover => 'カバー';
	@override String get fill => 'フィル';
	@override String get fit_height => '高さに合わせる';
	@override String get fit_width => '幅に合わせる';
	@override String get scale_down => '縮小';
}

// Path: message.account
class _TranslationsMessageAccountJa extends TranslationsMessageAccountEn {
	_TranslationsMessageAccountJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get login_success => 'ログイン成功！';
	@override String get register_success => '登録が成功しました。メールでアカウントを有効にしてください。';
	@override String get login_password_longer_than_6 => 'パスワードは少なくとも6文字である必要があります';
	@override String get please_type_email => 'メールアドレスを入力してください';
	@override String get please_type_email_or_username => 'メールアドレスまたはユーザー名を入力してください';
	@override String get please_type_valid_email => '正しいメールアドレスを入力してください';
	@override String get please_type_password => 'パスワードを入力してください';
	@override String get please_type_captcha => 'キャプチャを入力してください';
}

// Path: message.comment
class _TranslationsMessageCommentJa extends TranslationsMessageCommentEn {
	_TranslationsMessageCommentJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get content_empty => '内容は空であってはいけません。';
	@override String get content_too_long => '内容は1000文字を超えてはいけません。';
	@override String get sent => '返信が送信されました。';
}

// Path: message.create_thread
class _TranslationsMessageCreateThreadJa extends TranslationsMessageCreateThreadEn {
	_TranslationsMessageCreateThreadJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title_empty => 'タイトルは空であってはいけません。';
	@override String get title_too_long => 'タイトルは長すぎてはいけません。';
	@override String get content_empty => '内容は空であってはいけません。';
	@override String get content_too_long => '内容は20000文字を超えてはいけません。';
	@override String get created => 'スレッドが送信されました。';
}

// Path: message.blocked_tags
class _TranslationsMessageBlockedTagsJa extends TranslationsMessageBlockedTagsEn {
	_TranslationsMessageBlockedTagsJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get save_confirm => 'タグのブロックを保存しますか？';
	@override String get saved => 'ブロックされたタグが保存されました。';
	@override String get reached_limit => 'ブロックされたタグの数が上限に達しました。';
}

// Path: message.playlist
class _TranslationsMessagePlaylistJa extends TranslationsMessagePlaylistEn {
	_TranslationsMessagePlaylistJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get empty_playlist_title => 'プレイリストのタイトルは空であってはいけません。';
	@override String get playlist_created => 'プレイリストが作成されました。';
	@override String get playlist_title_edited => 'プレイリストのタイトルが編集されました。';
}

// Path: message.download
class _TranslationsMessageDownloadJa extends TranslationsMessageDownloadEn {
	_TranslationsMessageDownloadJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get no_provide_storage_permission => 'ストレージの許可がありません。';
	@override String get task_already_exists => 'ダウンロードタスクはすでに存在します。';
	@override String get task_created => 'ダウンロードタスクが作成されました。';
	@override String get maximum_simultaneous_download_reached => '最大同時ダウンロード数に達しました。';
}

// Path: message.update
class _TranslationsMessageUpdateJa extends TranslationsMessageUpdateEn {
	_TranslationsMessageUpdateJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get check_update_failed => '更新の確認に失敗しました';
	@override String get update_available => '新しいバージョンが利用可能です';
	@override String get already_latest_version => 'すでに最新バージョンです';
	@override String current_version({required Object version}) => '現在のバージョン：${version}';
	@override String latest_version({required Object version}) => '最新バージョン：${version}';
	@override String get view_update => '更新を表示';
}

// Path: error.account
class _TranslationsErrorAccountJa extends TranslationsErrorAccountEn {
	_TranslationsErrorAccountJa._(TranslationsJa root) : this._root = root, super.internal(root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get invalid_login => '無効なメールアドレスまたはパスワード';
	@override String get invalid_host => '無効なホスト名';
	@override String get invalid_captcha => '無効なキャプチャ';
}

/// The flat map containing all translations for locale <ja>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'nav.subscriptions' => 'サブスク',
			'nav.videos' => '動画',
			'nav.images' => '画像',
			'nav.forum' => 'フォーラム',
			'nav.search' => '検索',
			'rules.title' => 'ルール',
			'rules.accept' => '同意する',
			'rules.accept_desc' => '私はルールを読み、これに同意し、今後のルール変更についても、最新の情報を確認することに同意します。',
			'common.video' => '動画',
			'common.image' => '画像',
			'common.collapse' => '折りたたむ',
			'common.expand' => '展開',
			'common.translate' => '翻訳',
			'common.open' => '開く',
			'refresh.empty' => '何もありません',
			'refresh.drag_to_load' => '引っ張って読み込む',
			'refresh.release_to_load' => 'リリースして読み込む',
			'refresh.success' => '読み込み成功',
			'refresh.failed' => '読み込み失敗',
			'refresh.no_more' => 'これ以上なし',
			'refresh.last_load' => '前回の読み込み： %T',
			'records.select_all' => 'すべて選択',
			'records.select_inverse' => '逆選択',
			'records.selected_num' => ({required Object num}) => '選択済み ${num} 項目',
			'records.multiple_selection_mode' => '複数選択モード',
			'records.delete' => '削除',
			'records.delete_all' => 'すべて削除',
			'account.captcha' => 'キャプチャ',
			'account.login' => 'ログイン',
			'account.logout' => 'ログアウト',
			'account.register' => '登録',
			'account.email' => 'メール',
			'account.email_or_username' => 'メールまたはユーザー名',
			'account.password' => 'パスワード',
			'account.forgot_password' => 'パスワードを忘れた',
			'account.require_login' => 'ログインしてください',
			'profile.profile' => 'プロフィール',
			'profile.follow' => 'フォロー',
			'profile.followers' => 'フォロワー',
			'profile.following' => 'フォロー中',
			'profile.nickname' => 'ニックネーム',
			'profile.username' => 'ユーザー名',
			'profile.user_id' => 'ユーザーID',
			'profile.description' => '自己紹介',
			'profile.no_description' => '自分の周りに謎の空気を漂わせるのが好きです。',
			'profile.join_date' => '参加日',
			'profile.last_active_time' => '最終アクティブ時間',
			'profile.online' => 'オンライン',
			'profile.message' => 'メッセージ',
			'profile.guestbook' => 'ゲストブック',
			'profile.view_more' => 'もっと見る',
			'sort.latest' => '最新',
			'sort.trending' => 'トレンド',
			'sort.popularity' => '人気順',
			'sort.most_views' => '閲覧数',
			'sort.most_likes' => 'お気に入り数',
			'filter.all' => 'すべて',
			'filter.filter' => 'フィルター',
			'filter.rating' => 'レーティング',
			'filter.tag' => 'タグ',
			'filter.tags' => 'タグ',
			'filter.date' => '日付',
			'filter.general' => '一般',
			'filter.ecchi' => 'エッチ',
			'filter.select_rating' => 'レーティングを選択',
			'filter.select_year' => '年を選択',
			'filter.select_month' => '月を選択',
			'search.users' => 'ユーザー',
			'search.search' => '検索',
			'search.history.delete' => 'すべての記録を削除',
			'time.seconds_ago' => ({required Object time}) => '${time} 秒前',
			'time.minutes_ago' => ({required Object time}) => '${time} 分前',
			'time.hours_ago' => ({required Object time}) => '${time} 時間前',
			'time.days_ago' => ({required Object time}) => '${time} 日前',
			'media.private' => 'プライベート',
			'media.add_to_playlist' => 'プレイリストに追加',
			'media.external_video' => '外部動画',
			'media.share' => '共有',
			'media.download' => 'ダウンロード',
			'media.more_from' => ({required Object username}) => '${username} からのその他',
			'media.more_like_this' => '同様の作品',
			'media.updated_at' => ({required Object time}) => '${time} に更新',
			'media.detail' => '詳細',
			'media.comments' => 'コメント',
			'player.current_item' => ({required Object item}) => '現在：${item}',
			'player.quality' => '画質',
			'player.select_quality' => '画質を選択',
			'player.playback_speed' => '再生速度',
			'player.select_playback_speed' => '再生速度を選択',
			'player.aspect_ratio' => 'アスペクト比',
			'player.select_aspect_ratio' => 'アスペクト比を選択',
			'player.aspect_ratios.contain' => '含む',
			'player.aspect_ratios.cover' => 'カバー',
			'player.aspect_ratios.fill' => 'フィル',
			'player.aspect_ratios.fit_height' => '高さに合わせる',
			'player.aspect_ratios.fit_width' => '幅に合わせる',
			'player.aspect_ratios.scale_down' => '縮小',
			'player.seconds' => ({required Object value}) => '${value} 秒',
			'player.double_speed' => '2 倍',
			'comment.comment' => 'コメント',
			'comment.comments' => 'コメント',
			'comment.comment_detail' => 'コメントの詳細',
			'comment.edit_comment' => 'コメントの編集',
			'comment.delete_comment' => 'コメントの削除',
			'comment.reply' => '返信',
			'comment.replies_in_total' => ({required Object numReply}) => '合計 ${numReply} 件の返信',
			'comment.show_all_replies' => ({required Object numReply}) => 'すべての ${numReply} 件の返信を表示',
			'user.following' => 'フォロー中',
			'user.history' => '履歴',
			'user.blocked_tags' => 'ブロックされたタグ',
			'user.friends' => '友達',
			'user.downloads' => 'ダウンロード',
			'user.favorites' => 'お気に入り',
			'user.playlists' => 'プレイリスト',
			'user.settings' => '設定',
			'user.about' => 'について',
			'friend.friend_requests' => '友達リクエスト',
			'friend.add_friend' => '友達に追加',
			'friend.pending' => '保留中',
			'friend.unfriend' => '友達解除',
			'friend.accept' => '承認',
			'friend.reject' => '拒否',
			'blocked_tags.add_blocked_tag' => 'ブロックされたタグを追加',
			'blocked_tags.blocked_tag' => 'ブロックされたタグ',
			'download.create_download_task' => 'ダウンロードタスクの作成',
			'download.unknown' => '不明',
			'download.enqueued' => '待機中',
			'download.downloading' => 'ダウンロード中',
			'download.paused' => '一時停止済み',
			'download.finished' => '完了',
			'download.failed' => 'ダウンロード失敗',
			'download.retry' => '再試行',
			'download.delete' => '削除',
			'download.pause' => '一時停止',
			'download.resume' => '再開',
			'download.open_with' => '開く',
			'download.jump_to_detail' => '詳細ページに移動',
			'playlist.title' => 'プレイリストのタイトル',
			'playlist.create' => 'プレイリストの作成',
			'playlist.select' => 'プレイリストの選択',
			'playlist.edit_title' => 'タイトルを編集',
			'playlist.videos_count' => ({required Object numVideo}) => '${numVideo} 本のビデオ',
			'playlist.videos_count_plural' => ({required Object numVideo}) => '${numVideo} 本のビデオ',
			'channel.administration' => '管理者',
			'channel.announcements' => 'お知らせ',
			'channel.feedback' => 'フィードバック',
			'channel.support' => 'サポート',
			'channel.global' => '一般',
			'channel.general' => '一般',
			'channel.guides' => 'ガイド',
			'channel.questions' => 'ヘルプ/質問',
			'channel.requests' => 'リクエスト',
			'channel.sharing' => '共有',
			'channel.label' => ({required Object numThread, required Object numPosts}) => '${numThread} 本のスレッド ${numPosts} 本の返信',
			'create_thread.create_thread' => 'スレッドの作成',
			'create_thread.title' => 'タイトル',
			'create_thread.content' => '内容',
			'notifications.ok' => 'OK',
			'notifications.success' => '成功',
			'notifications.error' => 'エラー',
			'notifications.loading' => '読み込み中...',
			'notifications.cancel' => 'キャンセル',
			'notifications.confirm' => '確認',
			'notifications.apply' => '適用',
			'settings.appearance' => '外観設定',
			'settings.theme' => 'テーマ',
			'settings.theme_desc' => 'アプリのテーマを設定します',
			'settings.dynamic_color' => 'ダイナミックカラー',
			'settings.dynamic_color_desc' => 'コンテンツに応じてアプリの色を変更します',
			'settings.custom_color' => 'カスタムカラー',
			'settings.custom_color_desc' => 'アプリのテーマカラーをカスタマイズします',
			'settings.language' => '言語',
			'settings.language_desc' => 'アプリの言語を設定します',
			'settings.display_mode' => '表示モード',
			'settings.display_mode_desc' => 'アプリの表示モードを設定します',
			'settings.work_mode' => '作業モード',
			'settings.work_mode_desc' => 'NSFW コンテンツのカバーを非表示にします',
			'settings.network' => 'ネットワーク設定',
			'settings.enable_proxy' => 'プロキシを有効にする',
			'settings.enable_proxy_desc' => 'プロキシサービスを有効にします',
			'settings.proxy' => 'プロキシ設定',
			'settings.proxy_desc' => 'プロキシサーバーを設定します',
			'settings.player' => 'プレイヤー設定',
			'settings.autoplay' => '自動再生',
			'settings.autoplay_desc' => 'ビデオページを開くときに自動でビデオを再生します',
			'settings.background_play' => 'バックグラウンド再生',
			'settings.background_play_desc' => 'アプリをバックグラウンドでビデオを再生することを許可します',
			'settings.download' => 'ダウンロード設定',
			'settings.download_path' => 'ダウンロードパス',
			'settings.allow_media_scan' => 'メディアスキャンを許可',
			'settings.allow_media_scan_desc' => 'ダウンロードしたメディアファイルをメディアスキャンアプリに読み取らせることを許可します',
			'settings.logging' => 'ログ',
			'settings.enable_logging' => 'ログを有効にする',
			'settings.enable_logging_desc' => 'アプリのログを有効にします',
			'settings.clear_log' => 'ログをクリア',
			'settings.clear_log_desc' => ({required Object size}) => '現在のログサイズ：${size}',
			'settings.enable_verbose_logging' => '詳細なログを有効にする',
			'settings.enable_verbose_logging_desc' => 'より詳細なログを記録します',
			'settings.about' => '情報',
			'settings.check_update' => '更新を確認',
			'settings.check_update_desc' => '新しいバージョンが利用可能かどうかを確認します',
			'settings.third_party_license' => 'サードパーティのライセンス',
			'settings.third_party_license_desc' => 'サードパーティのライブラリのライセンスを確認します',
			'theme.system' => 'システムに従う',
			'theme.light' => 'ライト',
			'theme.dark' => 'ダーク',
			'colors.pink' => 'ピンク',
			'colors.red' => '赤',
			'colors.orange' => 'オレンジ',
			'colors.amber' => 'アンバー',
			'colors.yellow' => '黄',
			'colors.lime' => 'ライム',
			'colors.lightGreen' => 'ライトグリーン',
			'colors.green' => '緑',
			'colors.teal' => 'ティール',
			'colors.cyan' => 'シアン',
			'colors.lightBlue' => 'ライトブルー',
			'colors.blue' => '青',
			'colors.indigo' => 'インディゴ',
			'colors.purple' => '紫',
			'colors.deepPurple' => 'ディープパープル',
			'colors.blueGrey' => 'ブルーグレー',
			'colors.brown' => '茶色',
			'colors.grey' => 'グレー',
			'display_mode.no_available' => '利用可能な表示モードはありません',
			'display_mode.auto' => '自動',
			'display_mode.system' => 'システム',
			'proxy.host' => 'ホスト名',
			'proxy.port' => 'ポート',
			'message.exit_app' => 'アプリを終了するにはもう一度押してください',
			'message.are_you_sure_to_do_that' => 'それを行うことを確認していますか？',
			'message.restart_required' => '再起動後に有効',
			'message.please_type_host' => 'ホスト名を入力してください',
			'message.please_type_port' => 'ポートを入力してください',
			'message.account.login_success' => 'ログイン成功！',
			'message.account.register_success' => '登録が成功しました。メールでアカウントを有効にしてください。',
			'message.account.login_password_longer_than_6' => 'パスワードは少なくとも6文字である必要があります',
			'message.account.please_type_email' => 'メールアドレスを入力してください',
			'message.account.please_type_email_or_username' => 'メールアドレスまたはユーザー名を入力してください',
			'message.account.please_type_valid_email' => '正しいメールアドレスを入力してください',
			'message.account.please_type_password' => 'パスワードを入力してください',
			'message.account.please_type_captcha' => 'キャプチャを入力してください',
			'message.comment.content_empty' => '内容は空であってはいけません。',
			'message.comment.content_too_long' => '内容は1000文字を超えてはいけません。',
			'message.comment.sent' => '返信が送信されました。',
			'message.create_thread.title_empty' => 'タイトルは空であってはいけません。',
			'message.create_thread.title_too_long' => 'タイトルは長すぎてはいけません。',
			'message.create_thread.content_empty' => '内容は空であってはいけません。',
			'message.create_thread.content_too_long' => '内容は20000文字を超えてはいけません。',
			'message.create_thread.created' => 'スレッドが送信されました。',
			'message.blocked_tags.save_confirm' => 'タグのブロックを保存しますか？',
			'message.blocked_tags.saved' => 'ブロックされたタグが保存されました。',
			'message.blocked_tags.reached_limit' => 'ブロックされたタグの数が上限に達しました。',
			'message.playlist.empty_playlist_title' => 'プレイリストのタイトルは空であってはいけません。',
			'message.playlist.playlist_created' => 'プレイリストが作成されました。',
			'message.playlist.playlist_title_edited' => 'プレイリストのタイトルが編集されました。',
			'message.download.no_provide_storage_permission' => 'ストレージの許可がありません。',
			'message.download.task_already_exists' => 'ダウンロードタスクはすでに存在します。',
			'message.download.task_created' => 'ダウンロードタスクが作成されました。',
			'message.download.maximum_simultaneous_download_reached' => '最大同時ダウンロード数に達しました。',
			'message.update.check_update_failed' => '更新の確認に失敗しました',
			'message.update.update_available' => '新しいバージョンが利用可能です',
			'message.update.already_latest_version' => 'すでに最新バージョンです',
			'message.update.current_version' => ({required Object version}) => '現在のバージョン：${version}',
			'message.update.latest_version' => ({required Object version}) => '最新バージョン：${version}',
			'message.update.view_update' => '更新を表示',
			'error.retry' => '読み込みに失敗しました。再試行する',
			'error.fetch_failed' => 'ビデオリンクを取得できません',
			'error.fetch_user_info_failed' => 'ユーザー情報を取得できません',
			'error.invalid_path' => '無効なパス',
			'error.intercept_app_exit' => 'アプリの終了をブロック',
			'error.account.invalid_login' => '無効なメールアドレスまたはパスワード',
			'error.account.invalid_host' => '無効なホスト名',
			'error.account.invalid_captcha' => '無効なキャプチャ',
			_ => null,
		};
	}
}
