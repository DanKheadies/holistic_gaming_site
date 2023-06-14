import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class PixaToolGifBlock extends StatelessWidget {
  final String gifUrl;
  final String text;
  final String linkUrl;

  const PixaToolGifBlock({
    super.key,
    required this.gifUrl,
    required this.text,
    required this.linkUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(gifUrl),
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
