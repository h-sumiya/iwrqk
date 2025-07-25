import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../index.dart';
import 'play_pause_btn.dart';

class BottomControl extends StatelessWidget implements PreferredSizeWidget {
  final PlPlayerController? controller;
  final Function? triggerFullScreen;
  const BottomControl({this.controller, this.triggerFullScreen, super.key});

  @override
  Size get preferredSize => const Size(double.infinity, kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    Color colorTheme = Theme.of(context).colorScheme.primary;
    final c = controller!;
    const textStyle = TextStyle(
      color: Colors.white,
      fontSize: 12,
    );

    return Container(
      color: Colors.transparent,
      height: 90,
      padding: const EdgeInsets.only(left: 8, right: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Obx(
            () {
              final int value = c.sliderPositionSeconds.value;
              final int max = c.durationSeconds.value;
              final int buffer = c.bufferedSeconds.value;
              if (value > max || max <= 0) {
                return const SizedBox.shrink();
              }
              return Padding(
                padding: const EdgeInsets.only(left: 6, right: 6),
                child: ProgressBar(
                  progress: Duration(seconds: value),
                  buffered: Duration(seconds: buffer),
                  total: Duration(seconds: max),
                  progressBarColor: colorTheme,
                  baseBarColor:
                      Colors.white.withAlpha((0.2 * 255).round()),
                  bufferedBarColor:
                      colorTheme.withAlpha((0.4 * 255).round()),
                  timeLabelLocation: TimeLabelLocation.none,
                  thumbColor: colorTheme,
                  barHeight: 3.5,
                  thumbRadius: 7,
                  onDragStart: (duration) {
                    HapticFeedback.lightImpact();
                    c.onChangedSliderStart();
                  },
                  onDragUpdate: (duration) {
                    c.onUpdatedSliderProgress(duration.timeStamp);
                  },
                  onSeek: (duration) {
                    c.onChangedSliderEnd();
                    c.onChangedSlider(duration.inSeconds.toDouble());
                    c.seekTo(Duration(seconds: duration.inSeconds),
                        type: 'slider');
                  },
                ),
              );
            },
          ),
          Row(
            children: [
              PlayOrPauseButton(
                controller: c,
              ),
              const SizedBox(width: 4),
              // 播放时间
              Obx(() {
                return Text(
                  c.durationSeconds.value >= 3600
                      ? printDurationWithHours(
                          Duration(seconds: c.positionSeconds.value))
                      : printDuration(
                          Duration(seconds: c.positionSeconds.value)),
                  style: textStyle,
                );
              }),
              const SizedBox(width: 2),
              const Text('/', style: textStyle),
              const SizedBox(width: 2),
              Obx(
                () => Text(
                  c.durationSeconds.value >= 3600
                      ? printDurationWithHours(
                          Duration(seconds: c.durationSeconds.value))
                      : printDuration(
                          Duration(seconds: c.durationSeconds.value)),
                  style: textStyle,
                ),
              ),
              const Spacer(),
              // 倍速
              // Obx(
              //   () => SizedBox(
              //     width: 45,
              //     height: 34,
              //     child: TextButton(
              //       style: ButtonStyle(
              //         padding: MaterialStateProperty.all(EdgeInsets.zero),
              //       ),
              //       onPressed: () {
              //         _.togglePlaybackSpeed();
              //       },
              //       child: Text(
              //         '${_.playbackSpeed.toString()}X',
              //         style: textStyle,
              //       ),
              //     ),
              //   ),
              // ),
              // 全屏
              Obx(
                () => ComBtn(
                  icon: Icon(
                    c.isFullScreen.value
                        ? Icons.fullscreen_exit
                        : Icons.fullscreen,
                    color: Colors.white,
                  ),
                  fuc: () => triggerFullScreen!(),
                ),
              ),
              const SizedBox(width: 4),
            ],
          ),
          SizedBox(
              height:
                  Get.mediaQuery.orientation == Orientation.landscape ? 12 : 6),
        ],
      ),
    );
  }
}
