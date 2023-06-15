import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';

void playOnPrompt(
  BuildContext context,
  String title,
  Widget content,
) {
  showDialog(
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(50),
        child: AlertDialog(
          title: Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontWeight: FontWeight.w600,
            ),
          ),
          insetPadding: Responsive.isMobile(context)
              ? EdgeInsets.zero
              : const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 24,
                ),
          content: content,
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
        // child: AlertDialog(
        //   title: Text(
        //     title,
        //     textAlign: TextAlign.center,
        //     style: const TextStyle(
        //       fontWeight: FontWeight.w600,
        //     ),
        //   ),

        //   content: content,
        //   scrollable: true,
        //   actionsAlignment: MainAxisAlignment.center,
        //   actions: [
        //     TextButton(
        //       onPressed: () {
        //         Navigator.pop(context);
        //       },
        //       child: Text(
        //         'Play On',
        //         style: TextStyle(
        //           color: Theme.of(context).colorScheme.secondary,
        //           fontSize: 16,
        //         ),
        //       ),
        //     ),
        //   ],
        // ),
      );
    },
  );
}
