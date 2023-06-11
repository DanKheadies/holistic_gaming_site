import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class MemberDescription extends StatelessWidget {
  final List<Widget> description;
  final String linkText;
  final String linkUrl;

  const MemberDescription({
    super.key,
    required this.description,
    required this.linkText,
    required this.linkUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...description,
        ActionLink(
          text: linkText,
          onTap: () => context.goNamed(linkUrl),
        ),
      ],
    );
  }
}
