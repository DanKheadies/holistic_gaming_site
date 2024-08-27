import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';

class InformationRow extends StatelessWidget {
  final String title;
  final Widget body;

  const InformationRow({
    super.key,
    required this.title,
    required this.body,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Responsive.isDesktop(context) || Responsive.isWideDesktop(context)
            ? const Flexible(
                flex: 1,
                child: SizedBox(),
              )
            : const SizedBox(),
        Flexible(
          flex: Responsive.isDesktop(context) ? 14 : 10,
          child: Container(
            padding: const EdgeInsets.symmetric(
              vertical: 25,
              horizontal: 20,
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 18,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Theme.of(context).colorScheme.surface,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        title,
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                SelectionArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                    ),
                    child: body,
                  ),
                ),
                const SizedBox(height: 35),
              ],
            ),
          ),
        ),
        Responsive.isDesktop(context) || Responsive.isWideDesktop(context)
            ? const Flexible(
                flex: 1,
                child: SizedBox(),
              )
            : const SizedBox(),
      ],
    );
  }
}
