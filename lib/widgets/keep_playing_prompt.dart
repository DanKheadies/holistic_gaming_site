import 'package:flutter/material.dart';

void keepPlaying(
  BuildContext context,
  String soKeepPlaying,
) {
  showDialog(
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(50),
        child: AlertDialog(
          title: const Text(
            'You\'re smarter than you think.\nSo keep playing.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          content: SelectionArea(
            child: Text(
              soKeepPlaying,
            ),
          ),
          scrollable: true,
          actionsAlignment: MainAxisAlignment.center,
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Play On',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.secondary,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      );
    },
  );
}
