import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/data/data.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  List<String> games = [
    'The Story of Dan Kheadies',
    'Corso Games',
    'Truth or Elaborate Lie',
    'TowerDeez\'s Super Best Friends Tower Defense',
    'Immunis',
    'Guess Who Colluded',
    // 'Monkey\'s Paw: Super Powers Edition',
    'Ploys R Us',
  ];

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      child: CarouselSlider(
        options: CarouselOptions(
          // aspectRatio: 3,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 10),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          initialPage: 3,
          scrollDirection: Axis.vertical,
          // scrollPhysics: const NeverScrollableScrollPhysics(),
          viewportFraction: Responsive.isMobile(context)
              ? 0.5
              : Responsive.isTablet(context)
                  ? 0.65
                  : 0.8,
          height: MediaQuery.of(context).size.height - 56,
        ),
        items: gamesPics
            .map(
              (pic) => Container(
                margin: const EdgeInsets.all(15),
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black,
                    width: 1,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                  child: Container(
                    color: Colors.red,
                    // child: Stack(),
                    child: Image.network(
                      pic,
                      fit: BoxFit.contain,
                      // fit: BoxFit.scaleDown,
                      width: width,
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
