import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:floating/floating.dart';
import 'package:share_plus/share_plus.dart';

import '../../../i18n/strings.g.dart';
import '../../components/buttons/follow_button/widget.dart';
import '../../components/comments_list/controller.dart';
import '../../components/comments_list/widget.dart';
import '../../components/edit_comment_bottom_sheet/widget.dart';
import '../../components/load_empty.dart';
import '../../components/load_fail.dart';
import '../../components/media_preview/media_flat_preview.dart';
import '../../components/network_image.dart';
import '../../components/plugin/pl_player/index.dart';
import '../../components/user_preview/user_preview.dart';
import '../../const/iwara.dart';
import '../../data/enums/types.dart';
import '../../data/models/media/image.dart';
import '../../data/models/media/video.dart';
import '../../data/providers/storage_provider.dart';
import '../../data/services/plugin/pl_player/service_locator.dart';
import '../../utils/display_util.dart';
import '../account/downloads/widgets/downloads_media_preview_list/widget.dart';
import 'controller.dart';
import 'widgets/create_video_download_task/widget.dart';
import 'widgets/gallery/iwr_gallery.dart';
import 'widgets/add_to_playlist/widget.dart';
import 'widgets/media_desc.dart';

class MediaDetailPage extends StatefulWidget {
  const MediaDetailPage({super.key});

  static final RouteObserver<PageRoute> routeObserver =
      RouteObserver<PageRoute>();

  @override
  State<MediaDetailPage> createState() => _MediaDetailPageState();
}

class _MediaDetailPageState extends State<MediaDetailPage>
    with TickerProviderStateMixin, RouteAware {
  final MediaDetailController _controller = Get.find();
  bool _isFabVisible = true;
  final ScrollController commentsScrollController = ScrollController();
  late AnimationController fabAnimationController;

  GStorageConfig setting = StorageProvider.config;

  PlPlayerController? plPlayerController;

  PlayerStatus playerStatus = PlayerStatus.playing;
  double doubleOffset = 0;

  // 自动退出全屏
  late bool autoExitFullcreen;
  late bool autoPlayEnable;
  // 生命周期监听
  late final AppLifecycleListener _lifecycleListener;
  bool isShowing = true;

  ColorScheme get colorScheme =>
      _controller.dominantColorScheme.value ?? Theme.of(context).colorScheme;

  @override
  void initState() {
    super.initState();

    fabAnimationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    fabAnimationController.forward();

    commentsScrollController.addListener(() {
      final ScrollDirection direction =
          commentsScrollController.position.userScrollDirection;
      if (direction == ScrollDirection.forward) {
        if (!_isFabVisible) {
          _isFabVisible = true;
          fabAnimationController.forward();
        }
      } else if (direction == ScrollDirection.reverse) {
        if (_isFabVisible) {
          _isFabVisible = false;
          fabAnimationController.reverse();
        }
      }
    });

    if (_controller.mediaType == MediaType.video) {
      autoExitFullcreen =
          setting.get(PLPlayerConfigKey.enableAutoExit, defaultValue: false);
      autoPlayEnable =
          setting.get(PLPlayerConfigKey.enableAutoPlay, defaultValue: true);

      if (_controller.autoPlay.value) {
        plPlayerController = _controller.plPlayerController;
        plPlayerController!.addStatusLister(playerListener);
      }
      lifecycleListener();
    }
  }

  // 播放器状态监听
  void playerListener(PlayerStatus? status) async {
    playerStatus = status!;
    if (status == PlayerStatus.completed) {
      // 结束播放退出全屏
      if (autoExitFullcreen) {
        plPlayerController!.triggerFullScreen(status: false);
      }

      // /// 单个循环
      // if (plPlayerController!.playRepeat == PlayRepeat.singleCycle) {
      //   plPlayerController!.seekTo(Duration.zero);
      //   plPlayerController!.play();
      // }

      // 播放完展示控制栏
      try {
        PiPStatus currentStatus = await _controller.floating!.pipStatus;
        if (currentStatus == PiPStatus.disabled) {
          plPlayerController!.onLockControl(false);
        }
      } catch (_) {}
    }
  }

  // 继续播放或重新播放
  void continuePlay() async {
    plPlayerController!.play();
  }

  /// 未开启自动播放时触发播放
  Future<void> handlePlay() async {
    await _controller.playerInit();
    plPlayerController = _controller.plPlayerController;
    plPlayerController!.addStatusLister(playerListener);
    _controller.autoPlay.value = true;
  }

  // 生命周期监听
  void lifecycleListener() {
    _lifecycleListener = AppLifecycleListener(
      // 只作用于桌面端
      onExitRequested: () {
        ScaffoldMessenger.maybeOf(context)
            ?.showSnackBar(const SnackBar(content: Text("拦截应用退出")));
        return Future.value(AppExitResponse.cancel);
      },
    );
  }

  @override
  // 离开当前页面时
  void didPushNext() async {
    if (_controller.mediaType == MediaType.video) {
      /// 开启
      if (setting.get(PLPlayerConfigKey.enableAutoBrightness,
          defaultValue: false) as bool) {
        _controller.brightness = plPlayerController!.brightness.value;
      }
      if (plPlayerController != null) {
        _controller.defaultST = plPlayerController!.position.value;
        plPlayerController!.removeStatusLister(playerListener);
        plPlayerController!.pause();
      }
      setState(() => isShowing = false);
    }
    super.didPushNext();
  }

  @override
  // 返回当前页面时
  void didPopNext() async {
    if (_controller.mediaType == MediaType.video) {
      setState(() => isShowing = true);
      final bool autoplay = autoPlayEnable;
      if (_controller.isOffline) {
        _controller.playerInit(
            autoplay: autoplay, video: _controller.currentOfflineVideoUrl);
      } else {
        _controller.playerInit(autoplay: autoplay);
      }

      /// 未开启自动播放时，未播放跳转下一页返回/播放后跳转下一页返回
      _controller.autoPlay.value = !_controller.isLoading;
      if (autoplay) {
        await Future.delayed(const Duration(milliseconds: 300));
        plPlayerController?.seekTo(_controller.defaultST);
        plPlayerController?.play();
      }
      plPlayerController?.addStatusLister(playerListener);
    }
    super.didPopNext();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    MediaDetailPage.routeObserver
        .subscribe(this, ModalRoute.of(context)! as PageRoute);
  }

  @override
  void dispose() {
    commentsScrollController.removeListener(() {});
    fabAnimationController.dispose();
    commentsScrollController.dispose();

    if (_controller.mediaType == MediaType.video) {
      if (plPlayerController != null) {
        plPlayerController!.removeStatusLister(playerListener);
        plPlayerController!.dispose();
      }
      _controller.floating?.cancelOnLeavePiP();
      videoPlayerServiceHandler.onVideoDetailDispose();
      _lifecycleListener.dispose();
    }

    super.dispose();
  }

  Widget _buildLoadingWidget() {
    String errorMessage = _controller.errorMessage;
    if (errorMessage == "") {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (errorMessage == "errors.privateVideo") {
      return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock,
              size: 56,
              color: colorScheme.outline,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                t.media.private,
                style: TextStyle(
                  fontSize: 20,
                  color: colorScheme.outline,
                ),
              ),
            ),
            UserPreview(
              user: _controller.user,
              showFriendButton: true,
            ),
          ],
        ),
      );
    } else {
      return Center(
        child: LoadFail(
          errorMessage: _controller.errorMessage,
          onRefresh: () {
            _controller.errorMessage = "";
            _controller.isLoading = true;
            _controller.loadData();
          },
        ),
      );
    }
  }

  Widget _buildFunctionButtons() {
    Widget buildButton(IconData iconData, String text, VoidCallback? onPressed,
        [bool active = false]) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor:
                active ? colorScheme.primary : colorScheme.inverseSurface,
            backgroundColor: active
                ? colorScheme.primaryContainer
                : colorScheme.onInverseSurface,
          ),
          onPressed: onPressed,
          icon: Icon(iconData),
          label: Text(text),
        ),
      );
    }

    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(
          children: [
            Obx(
              () => buildButton(
                !_controller.isProcessingFavorite & _controller.isFavorite
                    ? Icons.favorite
                    : Icons.favorite_outline,
                DisplayUtil.compactBigNumber(_controller.tempFavorite
                    ? _controller.media.numLikes + 1
                    : _controller.media.numLikes),
                _controller.isProcessingFavorite
                    ? null
                    : () {
                        if (_controller.isFavorite) {
                          _controller.unfavoriteMedia();
                        } else {
                          _controller.favroiteMedia();
                        }
                      },
                !_controller.isProcessingFavorite & _controller.isFavorite,
              ),
            ),
            if (_controller.mediaType == MediaType.video)
              buildButton(
                Icons.playlist_add,
                t.media.add_to_playlist,
                () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    enableDrag: true,
                    builder: (context) => Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: colorScheme,
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom),
                        child: AddToPlaylistBottomSheet(
                          videoId: _controller.media.id,
                        ),
                      ),
                    ),
                  );
                },
              ),
            buildButton(
              Icons.file_download,
              t.media.download,
              () {
                if (_controller.mediaType == MediaType.video) {
                  if (_controller.resolutions.isEmpty) {
                    SmartDialog.showToast(t.error.fetch_failed);
                    return;
                  }
                  Get.dialog(
                    Theme(
                      data: Theme.of(context).copyWith(
                        colorScheme: colorScheme,
                      ),
                      child: CreateVideoDownloadDialog(
                        resolutions: _controller.resolutions,
                        previewData: _controller.offlineMedia,
                      ),
                    ),
                  );
                }
              },
            ),
            buildButton(
              Icons.share,
              t.media.share,
              () {
                if (_controller.mediaType == MediaType.video) {
                  SharePlus.instance.share(
                    ShareParams(
                      text: IwaraConst.videoPageUrl
                          .replaceAll("{id}", _controller.media.id),
                    ),
                  );
                } else {
                  SharePlus.instance.share(
                    ShareParams(
                      text: IwaraConst.imagePageUrl
                          .replaceAll("{id}", _controller.media.id),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMediaDetail() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Material(
          color: colorScheme.surface,
          child: InkWell(
            onTap: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                enableDrag: true,
                barrierColor: Colors.transparent,
                builder: (context) => Theme(
                  data: Theme.of(context).copyWith(
                    colorScheme: colorScheme,
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: MeidaDescription(
                      media: _controller.media,
                    ),
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.only(top: 16),
                    child: Text(
                      _controller.media.title,
                      style: Theme.of(context).textTheme.headlineSmall,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    width: double.infinity,
                    child: Text.rich(
                      TextSpan(
                        children: [
                          WidgetSpan(
                            child: Padding(
                              padding: const EdgeInsets.only(right: 4),
                              child: Icon(
                                Icons.remove_red_eye,
                                size: 16,
                                color: colorScheme.primary,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: DisplayUtil.compactBigNumber(
                                _controller.media.numViews),
                            style: TextStyle(
                              fontSize: 14,
                              color: colorScheme.primary,
                            ),
                          ),
                          const WidgetSpan(
                            child: SizedBox(width: 16),
                          ),
                          TextSpan(
                            text: DisplayUtil.getDisplayTime(
                              DateTime.parse(_controller.media.createdAt),
                            ),
                            style: TextStyle(
                              fontSize: 14,
                              color: colorScheme.primary,
                            ),
                          ),
                        ],
                      ),
                      maxLines: 1,
                      textAlign: TextAlign.left,
                    ),
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),
          ),
        ),
        _buildFunctionButtons(),
        ListTile(
          contentPadding: const EdgeInsets.fromLTRB(16, 8, 16, 0),
          leading: GestureDetector(
            onTap: gotoProfile,
            child: ClipOval(
              clipBehavior: Clip.antiAlias,
              child: NetworkImg(
                imageUrl: _controller.media.user.avatarUrl,
                width: 40,
                height: 40,
              ),
            ),
          ),
          subtitle: GestureDetector(
            onTap: gotoProfile,
            child: Text(
              '@${_controller.media.user.username}',
              style: TextStyle(
                fontSize: 12.5,
                color: colorScheme.outline,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          title: GestureDetector(
            onTap: gotoProfile,
            child: Text(
              _controller.media.user.name,
              style: Theme.of(context).textTheme.titleMedium,
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
          trailing: FollowButton(
            user: _controller.media.user,
          ),
        ),
        const SizedBox(height: 8),
      ],
    );
  }

  void gotoProfile() {
    HapticFeedback.lightImpact();
    Get.toNamed("/profile?userName=${_controller.media.user.username}");
  }

  List<Widget> _buildRecommendation() {
    List<Widget> children = [];
    if (_controller.moreFromUser.isNotEmpty) {
      children.add(
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 5),
          alignment: Alignment.centerLeft,
          child: AutoSizeText(
            t.media.more_from(username: _controller.media.user.name),
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      );
      children.addAll(
        _controller.moreFromUser.map(
          (e) => MediaFlatPreview(
            media: e,
          ),
        ),
      );
    }
    if (_controller.moreLikeThis.isNotEmpty) {
      children.add(
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 5),
          alignment: Alignment.centerLeft,
          child: AutoSizeText(
            t.media.more_like_this,
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
      );
      children.addAll(
        _controller.moreLikeThis.map(
          (e) => MediaFlatPreview(
            media: e,
          ),
        ),
      );
    }
    children.add(SizedBox(height: MediaQuery.of(context).padding.bottom));
    return children;
  }

  Widget _buildCommentsTab() {
    return Stack(
      children: [
        Material(
          color: colorScheme.surface,
          child: CommentsList(
            tag: _controller.commentsListTag,
            scrollController: commentsScrollController,
            uploaderUserName: _controller.media.user.username,
            sourceId: _controller.media.id,
            sourceType: _controller.mediaType == MediaType.video
                ? CommentsSourceType.video
                : CommentsSourceType.image,
          ),
        ),
        Positioned(
          bottom: MediaQuery.of(context).padding.bottom + 16,
          right: 14,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: const Offset(0, 2),
              end: const Offset(0, 0),
            ).animate(CurvedAnimation(
              parent: fabAnimationController,
              curve: Curves.easeInOut,
            )),
            child: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                  context: context,
                  isScrollControlled: true,
                  builder: (context) => Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: EditCommentBottomSheet(
                      sourceId: _controller.media.id,
                      sourceType: _controller.mediaType == MediaType.video
                          ? CommentsSourceType.video
                          : CommentsSourceType.image,
                      onChanged: (_) {
                        CommentsListController controller = Get.find(
                          tag: _controller.commentsListTag,
                        );
                        controller.updateAfterSend();
                      },
                    ),
                  ),
                );
              },
              child: const Icon(Icons.reply),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDetailTab() {
    return Obx(() {
      List<Widget> children = [
        SliverToBoxAdapter(
          child: _buildMediaDetail(),
        )
      ];

      if (_controller.isFectchingRecommendation) {
        children.add(
          const SliverFillRemaining(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 48),
                child: CircularProgressIndicator(),
              ),
            ),
          ),
        );
      } else {
        if (_controller.errorMessageRecommendation != "") {
          children.add(
            SliverFillRemaining(
              child: Center(
                child: LoadFail(
                  errorMessage: _controller.errorMessageRecommendation,
                  onRefresh: () {
                    _controller.errorMessageRecommendation = "";
                    _controller.isFectchingRecommendation = true;
                    _controller.refectchRecommendation();
                  },
                ),
              ),
            ),
          );
        } else if (_controller.moreFromUser.isEmpty &&
            _controller.moreLikeThis.isEmpty) {
          children.add(
            const SliverFillRemaining(
              child: Center(child: LoadEmpty()),
            ),
          );
        } else {
          children.add(SliverToBoxAdapter(
            child: Material(
              color: colorScheme.surface,
              child: Column(
                children: _buildRecommendation(),
              ),
            ),
          ));
        }
      }
      return CustomScrollView(
        slivers: children,
      );
    });
  }

  Widget _buildPlayer([bool inPip = false]) {
    Widget buildWithExitBtn(Widget child) {
      return Stack(
        children: [
          Container(color: Colors.black, child: Center(child: child)),
          Positioned(
            top: 0,
            left: 0,
            child: IconButton(
              padding: const EdgeInsets.all(16),
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
                size: Theme.of(context).appBarTheme.iconTheme?.size,
              ),
              onPressed: () {
                Get.back();
              },
            ),
          ),
        ],
      );
    }

    return Obx(() {
      Widget child;
      String? embedUrl;

      if (!_controller.isOffline) {
        embedUrl = (_controller.media as VideoModel).embedUrl;
      }

      if (_controller.isFectchingResolution ||
          _controller.fetchFailed ||
          _controller.isLoadingPlayer) {
        child = buildWithExitBtn(
          Obx(
            () => !_controller.fetchFailed
                ? const CircularProgressIndicator()
                : Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          _controller.refectchVideo();
                        },
                        icon: Icon(
                          Icons.refresh,
                          color: colorScheme.primary,
                          size: 42,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: Text(
                          t.error.fetch_failed,
                          style: const TextStyle(color: Colors.white),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  ),
          ),
        );
      } else if (embedUrl != null) {
        child = buildWithExitBtn(
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.info, size: 32),
                  const SizedBox(width: 4),
                  Text(
                    t.media.external_video,
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              FilledButton.icon(
                onPressed: () {
                  launchUrlString(embedUrl!);
                },
                label: Text(t.common.open),
                icon: const Icon(Icons.open_in_browser),
              ),
            ],
          ),
        );
      } else {
        child = Container(
          color: Colors.black,
          child: _buildPLPlayer(inPip),
        );
      }
      return child;
    });
  }

  Widget _buildPLPlayer([bool inPip = false]) {
    return PopScope(
      canPop: plPlayerController?.isFullScreen.value != true,
      onPopInvokedWithResult: (bool didPop, Object? result) {
        if (plPlayerController?.isFullScreen.value == true) {
          plPlayerController!.triggerFullScreen(status: false);
        }
        if (!GetPlatform.isDesktop &&
            MediaQuery.of(context).orientation == Orientation.landscape) {
          verticalScreen();
        }
      },
      child: Obx(
        () => !_controller.autoPlay.value
            ? const SizedBox.shrink()
            : PLVideoPlayer(
                inPip: inPip,
                controller: plPlayerController!,
                headerControl: _controller.headerControl,
              ),
      ),
    );
  }

  Widget _buildGallery() {
    return IwrGallery(
      imageUrls: (_controller.media as ImageModel).galleryFileUrls,
    );
  }

  Widget _buildPageFuture([bool inPip = false]) {
    Widget child;
    return Obx(() {
      if (plPlayerController?.isFullScreen.value == true) {
        enterFullScreen();
      } else if (!GetPlatform.isDesktop &&
          Get.mediaQuery.orientation == Orientation.landscape) {
        enterFullScreen();
      } else {
        exitFullScreen();
      }

      if (_controller.isLoading) {
        child = inPip
            ? _buildLoadingWidget()
            : Scaffold(
                appBar: AppBar(),
                body: _buildLoadingWidget(),
              );
      } else {
        Widget buildMedia() {
          if (inPip) {
            return _buildPlayer(true);
          } else {
            Widget child;
            if (plPlayerController?.isFullScreen.value == true ||
                (!GetPlatform.isDesktop &&
                    Get.mediaQuery.orientation == Orientation.landscape)) {
              child = _controller.mediaType == MediaType.video
                  ? _buildPlayer()
                  : _buildGallery();
            } else {
              child = AspectRatio(
                aspectRatio: 16 / 9,
                child: _controller.mediaType == MediaType.video
                    ? _buildPlayer()
                    : _buildGallery(),
              );
            }
            return SafeArea(
              top: Get.mediaQuery.orientation == Orientation.portrait &&
                  plPlayerController?.isFullScreen.value == true,
              bottom: Get.mediaQuery.orientation == Orientation.portrait &&
                  plPlayerController?.isFullScreen.value == true,
              child: child,
            );
          }
        }

        child = inPip
            ? buildMedia()
            : Scaffold(
                resizeToAvoidBottomInset: inPip ? null : false,
                backgroundColor: Colors.black,
                appBar: PreferredSize(
                  preferredSize: const Size.fromHeight(0),
                  child: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                ),
                body: plPlayerController?.isFullScreen.value == true ||
                        (!GetPlatform.isDesktop &&
                            Get.mediaQuery.orientation == Orientation.landscape)
                    ? buildMedia()
                    : Column(
                        children: [
                          buildMedia(),
                          if (_controller.isOffline) ...[
                            Expanded(
                              child: Container(
                                color: colorScheme.surface,
                                child: Material(
                                  child: DownloadsMediaPreviewList(
                                    isPlaylist: true,
                                    showCompleted: true,
                                    initialMediaId: _controller.id,
                                    tag: _controller.offlinePlaylistTag,
                                    onChangeVideo: (task) {
                                      if (task.taskId ==
                                          _controller.currentOfflineTaskId) {
                                        return;
                                      }
                                      if (task.offlineMedia.type ==
                                          MediaType.video) {
                                        _controller
                                            .getOfflineMedia(task.taskId);
                                      }
                                    },
                                  ),
                                ),
                              ),
                            ),
                          ] else ...[
                            Expanded(
                              child: Container(
                                color: colorScheme.surface,
                                child: DefaultTabController(
                                  length: 2,
                                  child: TabBarView(
                                    children: [
                                      _buildDetailTab(),
                                      _buildCommentsTab()
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ]
                        ],
                      ),
              );
      }

      if (_controller.configService.enableDynamicColor) {
        if (_controller.dominantColorScheme.value != null) {
          return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: _controller.dominantColorScheme.value!,
            ),
            child: child,
          );
        } else {
          return child;
        }
      } else {
        return child;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget childWhenDisabled = _buildPageFuture();
    Widget childWhenEnabled = _buildPageFuture(true);

    if (GetPlatform.isAndroid) {
      return PiPSwitcher(
        childWhenDisabled: childWhenDisabled,
        childWhenEnabled: childWhenEnabled,
        floating: _controller.floating,
      );
    } else {
      return childWhenDisabled;
    }
  }
}
