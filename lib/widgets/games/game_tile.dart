import 'package:flutter/material.dart';

class GameTile extends StatelessWidget {
  final String imageUrl;
  final String title;
  final Widget content;
  final Function() handlePress;
  final IconData icon;
  final Color color;
  final double width;

  const GameTile({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.content,
    required this.handlePress,
    required this.icon,
    required this.color,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: width,
        child: ListTile(
          leading: Image.asset(
            imageUrl,
          ),
          title: Text(
            title,
            style: TextStyle(
              color: Theme.of(context).colorScheme.surface,
              fontSize: 24,
            ),
          ),
          subtitle: content,
          trailing: ElevatedButton(
            onPressed: handlePress,
            style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              padding: const EdgeInsets.all(20),
              backgroundColor: color,
              foregroundColor: Theme.of(context).scaffoldBackgroundColor,
            ),
            child: Icon(
              icon,
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
