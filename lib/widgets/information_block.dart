import 'package:flutter/material.dart';

class InformationBlock extends StatelessWidget {
  final String title;
  final Widget body;
  final bool? isTight;

  const InformationBlock({
    super.key,
    required this.title,
    required this.body,
    this.isTight = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                    color: Theme.of(context).colorScheme.background,
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
          isTight != null && isTight!
              ? const SizedBox(height: 5)
              : const SizedBox(height: 25),
        ],
      ),
    );
  }
}
