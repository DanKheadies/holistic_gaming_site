import 'package:flutter/material.dart';

class MemberImage extends StatelessWidget {
  final String imageUrl;

  const MemberImage({
    super.key,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        imageUrl,
        width: 200,
      ),
    );
  }
}
