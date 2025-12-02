import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../const/iwara.dart';
import '../../data/enums/types.dart';
import '../../data/models/media/video.dart';
import '../../data/services/config_service.dart';
import '../../data/services/preview_service.dart';

class VideoPreviewOverlay extends StatelessWidget {
  VideoPreviewOverlay({super.key, required this.video});

  final VideoModel video;

  final PreviewService _previewService = Get.find();
  final ConfigService _configService = Get.find();

  @override
  Widget build(BuildContext context) {
    if (!_configService.enablePreview || !video.hasAnimatedPreview) {
      return const SizedBox.shrink();
    }

    return Obx(() {
      if (!_previewService.isPreviewing(video.id)) {
        return const SizedBox.shrink();
      }

      return LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth * 0.7;
          return Align(
            alignment: Alignment.topRight,
            child: Container(
              width: width,
              height: width * 9 / 16,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.45),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              clipBehavior: Clip.antiAlias,
              child: _PreviewImage(
                url: video.animatedPreviewUrl!,
                shouldBlur:
                    _configService.workMode &&
                    video.rating == RatingType.ecchi.value,
              ),
            ),
          );
        },
      );
    });
  }
}

class _PreviewImage extends StatelessWidget {
  final String url;
  final bool shouldBlur;

  const _PreviewImage({required this.url, required this.shouldBlur});

  @override
  Widget build(BuildContext context) {
    Widget image = Image.network(
      url,
      fit: BoxFit.cover,
      gaplessPlayback: true,
      headers: const {"referer": IwaraConst.referer},
      loadingBuilder: (context, child, loadingProgress) {
        if (loadingProgress == null) {
          return child;
        }
        return const Center(child: CircularProgressIndicator());
      },
      errorBuilder: (context, error, stackTrace) {
        return const ColoredBox(
          color: Colors.black,
          child: Center(child: Icon(Icons.error_outline)),
        );
      },
    );

    if (shouldBlur) {
      image = ImageFiltered(
        imageFilter: ImageFilter.blur(sigmaX: 7.5, sigmaY: 7.5),
        child: image,
      );
    }

    return image;
  }
}
