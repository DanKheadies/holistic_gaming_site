import 'package:flutter/material.dart';

class HomeLeftCol extends StatelessWidget {
  const HomeLeftCol({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SelectionArea(
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
                  'What?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Games affect people physically, mentally, emotionally, socially, and academically. Holistic gaming recognizes these effects, and it helps people research, design, and develop awesome games.',
              style: TextStyle(
                fontSize: 16,
                height: 1.25,
              ),
            ),
          ),
          const SizedBox(height: 35),
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
                  'Why?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Games make life better. They are valuable to many people for many reasons. Holistic gaming explains why they are valuable, how they work, and what people can do with games to make their lives better.',
              style: TextStyle(
                fontSize: 16,
                height: 1.25,
              ),
            ),
          ),
          const SizedBox(height: 35),
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
                  'Who?',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Everyone should adopt a holistic approach while researching and creating games—and for life. Like most things, the more you know and do, the better you\'ll be at it. We are the best holistic gamers.',
              style: TextStyle(
                fontSize: 16,
                height: 1.25,
              ),
            ),
          ),
          const SizedBox(height: 35),
        ],
      ),
    );
  }
}
