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
class TranslationsJa extends Translations {
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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'nav.subscriptions': return 'サブスク';
			case 'nav.videos': return '動画';
			case 'nav.images': return '画像';
			case 'nav.forum': return 'フォーラム';
			case 'nav.search': return '検索';
			case 'rules.title': return 'ルール';
			case 'rules.accept': return '同意する';
			case 'rules.accept_desc': return '私はルールを読み、これに同意し、今後のルール変更についても、最新の情報を確認することに同意します。';
			case 'common.video': return '動画';
			case 'common.image': return '画像';
			case 'common.collapse': return '折りたたむ';
			case 'common.expand': return '展開';
			case 'common.translate': return '翻訳';
			case 'common.open': return '開く';
			case 'refresh.empty': return '何もありません';
			case 'refresh.drag_to_load': return '引っ張って読み込む';
			case 'refresh.release_to_load': return 'リリースして読み込む';
			case 'refresh.success': return '読み込み成功';
			case 'refresh.failed': return '読み込み失敗';
			case 'refresh.no_more': return 'これ以上なし';
			case 'refresh.last_load': return '前回の読み込み： %T';
			case 'records.select_all': return 'すべて選択';
			case 'records.select_inverse': return '逆選択';
			case 'records.selected_num': return ({required Object num}) => '選択済み ${num} 項目';
			case 'records.multiple_selection_mode': return '複数選択モード';
			case 'records.delete': return '削除';
			case 'records.delete_all': return 'すべて削除';
			case 'account.captcha': return 'キャプチャ';
			case 'account.login': return 'ログイン';
			case 'account.logout': return 'ログアウト';
			case 'account.register': return '登録';
			case 'account.email': return 'メール';
			case 'account.email_or_username': return 'メールまたはユーザー名';
			case 'account.password': return 'パスワード';
			case 'account.forgot_password': return 'パスワードを忘れた';
			case 'account.require_login': return 'ログインしてください';
			case 'profile.profile': return 'プロフィール';
			case 'profile.follow': return 'フォロー';
			case 'profile.followers': return 'フォロワー';
			case 'profile.following': return 'フォロー中';
			case 'profile.nickname': return 'ニックネーム';
			case 'profile.username': return 'ユーザー名';
			case 'profile.user_id': return 'ユーザーID';
			case 'profile.description': return '自己紹介';
			case 'profile.no_description': return '自分の周りに謎の空気を漂わせるのが好きです。';
			case 'profile.join_date': return '参加日';
			case 'profile.last_active_time': return '最終アクティブ時間';
			case 'profile.online': return 'オンライン';
			case 'profile.message': return 'メッセージ';
			case 'profile.guestbook': return 'ゲストブック';
			case 'profile.view_more': return 'もっと見る';
			case 'sort.latest': return '最新';
			case 'sort.trending': return 'トレンド';
			case 'sort.popularity': return '人気順';
			case 'sort.most_views': return '閲覧数';
			case 'sort.most_likes': return 'お気に入り数';
			case 'filter.all': return 'すべて';
			case 'filter.filter': return 'フィルター';
			case 'filter.rating': return 'レーティング';
			case 'filter.tag': return 'タグ';
			case 'filter.tags': return 'タグ';
			case 'filter.date': return '日付';
			case 'filter.general': return '一般';
			case 'filter.ecchi': return 'エッチ';
			case 'filter.select_rating': return 'レーティングを選択';
			case 'filter.select_year': return '年を選択';
			case 'filter.select_month': return '月を選択';
			case 'search.users': return 'ユーザー';
			case 'search.search': return '検索';
			case 'search.history.delete': return 'すべての記録を削除';
			case 'time.seconds_ago': return ({required Object time}) => '${time} 秒前';
			case 'time.minutes_ago': return ({required Object time}) => '${time} 分前';
			case 'time.hours_ago': return ({required Object time}) => '${time} 時間前';
			case 'time.days_ago': return ({required Object time}) => '${time} 日前';
			case 'media.private': return 'プライベート';
			case 'media.add_to_playlist': return 'プレイリストに追加';
			case 'media.external_video': return '外部動画';
			case 'media.share': return '共有';
			case 'media.download': return 'ダウンロード';
			case 'media.more_from': return ({required Object username}) => '${username} からのその他';
			case 'media.more_like_this': return '同様の作品';
			case 'media.updated_at': return ({required Object time}) => '${time} に更新';
			case 'player.current_item': return ({required Object item}) => '現在：${item}';
			case 'player.quality': return '画質';
			case 'player.select_quality': return '画質を選択';
			case 'player.playback_speed': return '再生速度';
			case 'player.select_playback_speed': return '再生速度を選択';
			case 'player.aspect_ratio': return 'アスペクト比';
			case 'player.select_aspect_ratio': return 'アスペクト比を選択';
			case 'player.aspect_ratios.contain': return '含む';
			case 'player.aspect_ratios.cover': return 'カバー';
			case 'player.aspect_ratios.fill': return 'フィル';
			case 'player.aspect_ratios.fit_height': return '高さに合わせる';
			case 'player.aspect_ratios.fit_width': return '幅に合わせる';
			case 'player.aspect_ratios.scale_down': return '縮小';
			case 'player.seconds': return ({required Object value}) => '${value} 秒';
			case 'player.double_speed': return '2 倍';
			case 'comment.comment': return 'コメント';
			case 'comment.comments': return 'コメント';
			case 'comment.comment_detail': return 'コメントの詳細';
			case 'comment.edit_comment': return 'コメントの編集';
			case 'comment.delete_comment': return 'コメントの削除';
			case 'comment.reply': return '返信';
			case 'comment.replies_in_total': return ({required Object numReply}) => '合計 ${numReply} 件の返信';
			case 'comment.show_all_replies': return ({required Object numReply}) => 'すべての ${numReply} 件の返信を表示';
			case 'user.following': return 'フォロー中';
			case 'user.history': return '履歴';
			case 'user.blocked_tags': return 'ブロックされたタグ';
			case 'user.friends': return '友達';
			case 'user.downloads': return 'ダウンロード';
			case 'user.favorites': return 'お気に入り';
			case 'user.playlists': return 'プレイリスト';
			case 'user.settings': return '設定';
			case 'user.about': return 'について';
			case 'friend.friend_requests': return '友達リクエスト';
			case 'friend.add_friend': return '友達に追加';
			case 'friend.pending': return '保留中';
			case 'friend.unfriend': return '友達解除';
			case 'friend.accept': return '承認';
			case 'friend.reject': return '拒否';
			case 'blocked_tags.add_blocked_tag': return 'ブロックされたタグを追加';
			case 'blocked_tags.blocked_tag': return 'ブロックされたタグ';
			case 'download.create_download_task': return 'ダウンロードタスクの作成';
			case 'download.unknown': return '不明';
			case 'download.enqueued': return '待機中';
			case 'download.downloading': return 'ダウンロード中';
			case 'download.paused': return '一時停止済み';
			case 'download.finished': return '完了';
			case 'download.failed': return 'ダウンロード失敗';
			case 'download.retry': return '再試行';
			case 'download.delete': return '削除';
			case 'download.pause': return '一時停止';
			case 'download.resume': return '再開';
			case 'download.open_with': return '開く';
			case 'download.jump_to_detail': return '詳細ページに移動';
			case 'playlist.title': return 'プレイリストのタイトル';
			case 'playlist.create': return 'プレイリストの作成';
			case 'playlist.select': return 'プレイリストの選択';
			case 'playlist.edit_title': return 'タイトルを編集';
			case 'playlist.videos_count': return ({required Object numVideo}) => '${numVideo} 本のビデオ';
			case 'playlist.videos_count_plural': return ({required Object numVideo}) => '${numVideo} 本のビデオ';
			case 'channel.administration': return '管理者';
			case 'channel.announcements': return 'お知らせ';
			case 'channel.feedback': return 'フィードバック';
			case 'channel.support': return 'サポート';
			case 'channel.global': return '一般';
			case 'channel.general': return '一般';
			case 'channel.guides': return 'ガイド';
			case 'channel.questions': return 'ヘルプ/質問';
			case 'channel.requests': return 'リクエスト';
			case 'channel.sharing': return '共有';
			case 'channel.label': return ({required Object numThread, required Object numPosts}) => '${numThread} 本のスレッド ${numPosts} 本の返信';
			case 'create_thread.create_thread': return 'スレッドの作成';
			case 'create_thread.title': return 'タイトル';
			case 'create_thread.content': return '内容';
			case 'notifications.ok': return 'OK';
			case 'notifications.success': return '成功';
			case 'notifications.error': return 'エラー';
			case 'notifications.loading': return '読み込み中...';
			case 'notifications.cancel': return 'キャンセル';
			case 'notifications.confirm': return '確認';
			case 'notifications.apply': return '適用';
			case 'settings.appearance': return '外観設定';
			case 'settings.theme': return 'テーマ';
			case 'settings.theme_desc': return 'アプリのテーマを設定します';
			case 'settings.dynamic_color': return 'ダイナミックカラー';
			case 'settings.dynamic_color_desc': return 'コンテンツに応じてアプリの色を変更します';
			case 'settings.custom_color': return 'カスタムカラー';
			case 'settings.custom_color_desc': return 'アプリのテーマカラーをカスタマイズします';
			case 'settings.language': return '言語';
			case 'settings.language_desc': return 'アプリの言語を設定します';
			case 'settings.display_mode': return '表示モード';
			case 'settings.display_mode_desc': return 'アプリの表示モードを設定します';
			case 'settings.work_mode': return '作業モード';
			case 'settings.work_mode_desc': return 'NSFW コンテンツのカバーを非表示にします';
			case 'settings.network': return 'ネットワーク設定';
			case 'settings.enable_proxy': return 'プロキシを有効にする';
			case 'settings.enable_proxy_desc': return 'プロキシサービスを有効にします';
			case 'settings.proxy': return 'プロキシ設定';
			case 'settings.proxy_desc': return 'プロキシサーバーを設定します';
			case 'settings.player': return 'プレイヤー設定';
			case 'settings.autoplay': return '自動再生';
			case 'settings.autoplay_desc': return 'ビデオページを開くときに自動でビデオを再生します';
			case 'settings.background_play': return 'バックグラウンド再生';
			case 'settings.background_play_desc': return 'アプリをバックグラウンドでビデオを再生することを許可します';
			case 'settings.download': return 'ダウンロード設定';
			case 'settings.download_path': return 'ダウンロードパス';
			case 'settings.allow_media_scan': return 'メディアスキャンを許可';
			case 'settings.allow_media_scan_desc': return 'ダウンロードしたメディアファイルをメディアスキャンアプリに読み取らせることを許可します';
			case 'settings.logging': return 'ログ';
			case 'settings.enable_logging': return 'ログを有効にする';
			case 'settings.enable_logging_desc': return 'アプリのログを有効にします';
			case 'settings.clear_log': return 'ログをクリア';
			case 'settings.clear_log_desc': return ({required Object size}) => '現在のログサイズ：${size}';
			case 'settings.enable_verbose_logging': return '詳細なログを有効にする';
			case 'settings.enable_verbose_logging_desc': return 'より詳細なログを記録します';
			case 'settings.about': return '情報';
			case 'settings.check_update': return '更新を確認';
			case 'settings.check_update_desc': return '新しいバージョンが利用可能かどうかを確認します';
			case 'settings.third_party_license': return 'サードパーティのライセンス';
			case 'settings.third_party_license_desc': return 'サードパーティのライブラリのライセンスを確認します';
			case 'theme.system': return 'システムに従う';
			case 'theme.light': return 'ライト';
			case 'theme.dark': return 'ダーク';
			case 'colors.pink': return 'ピンク';
			case 'colors.red': return '赤';
			case 'colors.orange': return 'オレンジ';
			case 'colors.amber': return 'アンバー';
			case 'colors.yellow': return '黄';
			case 'colors.lime': return 'ライム';
			case 'colors.lightGreen': return 'ライトグリーン';
			case 'colors.green': return '緑';
			case 'colors.teal': return 'ティール';
			case 'colors.cyan': return 'シアン';
			case 'colors.lightBlue': return 'ライトブルー';
			case 'colors.blue': return '青';
			case 'colors.indigo': return 'インディゴ';
			case 'colors.purple': return '紫';
			case 'colors.deepPurple': return 'ディープパープル';
			case 'colors.blueGrey': return 'ブルーグレー';
			case 'colors.brown': return '茶色';
			case 'colors.grey': return 'グレー';
			case 'display_mode.no_available': return '利用可能な表示モードはありません';
			case 'display_mode.auto': return '自動';
			case 'display_mode.system': return 'システム';
			case 'proxy.host': return 'ホスト名';
			case 'proxy.port': return 'ポート';
			case 'message.exit_app': return 'アプリを終了するにはもう一度押してください';
			case 'message.are_you_sure_to_do_that': return 'それを行うことを確認していますか？';
			case 'message.restart_required': return '再起動後に有効';
			case 'message.please_type_host': return 'ホスト名を入力してください';
			case 'message.please_type_port': return 'ポートを入力してください';
			case 'message.account.login_success': return 'ログイン成功！';
			case 'message.account.register_success': return '登録が成功しました。メールでアカウントを有効にしてください。';
			case 'message.account.login_password_longer_than_6': return 'パスワードは少なくとも6文字である必要があります';
			case 'message.account.please_type_email': return 'メールアドレスを入力してください';
			case 'message.account.please_type_email_or_username': return 'メールアドレスまたはユーザー名を入力してください';
			case 'message.account.please_type_valid_email': return '正しいメールアドレスを入力してください';
			case 'message.account.please_type_password': return 'パスワードを入力してください';
			case 'message.account.please_type_captcha': return 'キャプチャを入力してください';
			case 'message.comment.content_empty': return '内容は空であってはいけません。';
			case 'message.comment.content_too_long': return '内容は1000文字を超えてはいけません。';
			case 'message.comment.sent': return '返信が送信されました。';
			case 'message.create_thread.title_empty': return 'タイトルは空であってはいけません。';
			case 'message.create_thread.title_too_long': return 'タイトルは長すぎてはいけません。';
			case 'message.create_thread.content_empty': return '内容は空であってはいけません。';
			case 'message.create_thread.content_too_long': return '内容は20000文字を超えてはいけません。';
			case 'message.create_thread.created': return 'スレッドが送信されました。';
			case 'message.blocked_tags.save_confirm': return 'タグのブロックを保存しますか？';
			case 'message.blocked_tags.saved': return 'ブロックされたタグが保存されました。';
			case 'message.blocked_tags.reached_limit': return 'ブロックされたタグの数が上限に達しました。';
			case 'message.playlist.empty_playlist_title': return 'プレイリストのタイトルは空であってはいけません。';
			case 'message.playlist.playlist_created': return 'プレイリストが作成されました。';
			case 'message.playlist.playlist_title_edited': return 'プレイリストのタイトルが編集されました。';
			case 'message.download.no_provide_storage_permission': return 'ストレージの許可がありません。';
			case 'message.download.task_already_exists': return 'ダウンロードタスクはすでに存在します。';
			case 'message.download.task_created': return 'ダウンロードタスクが作成されました。';
			case 'message.download.maximum_simultaneous_download_reached': return '最大同時ダウンロード数に達しました。';
			case 'message.update.check_update_failed': return '更新の確認に失敗しました';
			case 'message.update.update_available': return '新しいバージョンが利用可能です';
			case 'message.update.already_latest_version': return 'すでに最新バージョンです';
			case 'message.update.current_version': return ({required Object version}) => '現在のバージョン：${version}';
			case 'message.update.latest_version': return ({required Object version}) => '最新バージョン：${version}';
			case 'message.update.view_update': return '更新を表示';
			case 'error.retry': return '読み込みに失敗しました。再試行する';
			case 'error.fetch_failed': return 'ビデオリンクを取得できません';
			case 'error.fetch_user_info_failed': return 'ユーザー情報を取得できません';
			case 'error.invalid_path': return '無効なパス';
			case 'error.account.invalid_login': return '無効なメールアドレスまたはパスワード';
			case 'error.account.invalid_host': return '無効なホスト名';
			case 'error.account.invalid_captcha': return '無効なキャプチャ';
			default: return null;
		}
	}
}

