import 'package:flutter/material.dart';

class BulletItem extends StatelessWidget {
  final String content;

  const BulletItem({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(
              left: 15,
            ),
            child: const Text(
              '\u2022',
              style: TextStyle(
                fontSize: 22,
                height: 1.1,
              ),
            ),
          ),
          const SizedBox(width: 5),
          Expanded(
            child: Text(
              content,
            ),
          ),
        ],
      ),
    );
  }
}
