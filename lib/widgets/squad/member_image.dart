import 'package:flutter/material.dart';

class MemberImage extends StatelessWidget {
  const MemberImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        'assets/images/squad/david/david1.jpg',
        width: 200,
      ),
    );
  }
}
