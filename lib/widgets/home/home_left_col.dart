import 'package:flutter/material.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class HomeLeftCol extends StatelessWidget {
  const HomeLeftCol({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        InformationBlock(
          title: 'What?',
          body: Text(
            'Games affect people physically, mentally, emotionally, socially, and academically. Holistic gaming recognizes these effects, and it helps people research, design, and develop awesome games.',
          ),
          isTight: true,
        ),
        InformationBlock(
          title: 'Why?',
          body: Text(
            'Games make life better. They are valuable to many people for many reasons. Holistic gaming explains why they are valuable, how they work, and what people can do with games to make their lives better.',
          ),
          isTight: true,
        ),
        InformationBlock(
          title: 'Who?',
          body: Text(
            'Everyone should adopt a holistic approach while researching and creating games—and for life. Like most things, the more you know and do, the better you\'ll be at it. We are the best holistic gamers.',
          ),
          isTight: true,
        ),
      ],
    );
  }
}
