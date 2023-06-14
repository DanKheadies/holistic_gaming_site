import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class PixaToolVideoBlock extends StatelessWidget {
  final String picUrl;
  final String videoUrl;
  final String text;
  final String linkUrl;

  const PixaToolVideoBlock({
    super.key,
    required this.picUrl,
    required this.videoUrl,
    required this.text,
    required this.linkUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PixaToolVideo(
          picUrl: picUrl,
          videoUrl: videoUrl,
        ),
        const SizedBox(height: 15),
        Align(
          alignment: Alignment.center,
          child: ActionLink(
            text: text,
            navLink: linkUrl,
            onTap: () {},
          ),
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
