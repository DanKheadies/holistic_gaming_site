import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
// import 'package:holistic_gaming_site/data/data.dart';
import 'package:holistic_gaming_site/models/models.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class GamesScreen extends StatefulWidget {
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => _GamesScreenState();
}

class _GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      alwaysShowFooter: true,
      child: CarouselSlider(
        options: CarouselOptions(
          // aspectRatio: 3,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 10),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          enlargeCenterPage: true,
          initialPage: Random().nextInt(GameSlide.gameSlides.length),
          scrollDirection: Axis.vertical,
          viewportFraction: Responsive.isMobile(context)
              ? 0.5
              : Responsive.isTablet(context)
                  ? 0.65
                  : 0.75,
          height: MediaQuery.of(context).size.height - 56,
        ),
        items: GameSlide.gameSlides
            .map(
              (game) => Stack(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                        Radius.circular(30),
                      ),
                      child: Image.network(
                        game.picPath,
                        fit: BoxFit.contain,
                        width: width,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: game.upperPosition,
                    ),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.transparent,
                          Theme.of(context).colorScheme.surface.withAlpha(150),
                          Theme.of(context).colorScheme.surface.withAlpha(200),
                          Theme.of(context).colorScheme.surface.withAlpha(150),
                          Colors.transparent,
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    // height: MediaQuery.of(context).size.height / 10,
                    height: 100,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        child: Text(
                          game.description,
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: game.lowerPosition,
                    child: Container(
                      margin: EdgeInsets.only(
                        top: game.upperPosition,
                      ),
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Theme.of(context)
                                .colorScheme
                                .surface
                                .withAlpha(150),
                            Theme.of(context)
                                .colorScheme
                                .surface
                                .withAlpha(200),
                            Theme.of(context)
                                .colorScheme
                                .surface
                                .withAlpha(150),
                            Colors.transparent,
                          ],
                        ),
                      ),
                      width: MediaQuery.of(context).size.width,
                      // height: MediaQuery.of(context).size.height / 10,
                      height: 100,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: Text(
                            game.callToAction,
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.background,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            .toList(),
      ),
    );
  }
}
