import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/config/config.dart';
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
    return SiteWrapper(
      screen: 'Games',
      alwaysShowFooter: true,
      child: CarouselSlider(
        options: CarouselOptions(
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 13),
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
                  Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                      ),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                        child: Image.asset(
                          game.picPath,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                  ShaderMask(
                    shaderCallback: (Rect rect) {
                      return LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [
                          Colors.transparent,
                          Theme.of(context).scaffoldBackgroundColor,
                          Theme.of(context).scaffoldBackgroundColor,
                          Colors.transparent,
                        ],
                        stops: [
                          0.0,
                          Responsive.isMobile(context) ? 0.05 : 0.1,
                          Responsive.isMobile(context) ? 0.95 : 0.9,
                          1.0,
                        ],
                      ).createShader(rect);
                    },
                    child: Container(
                      margin: EdgeInsets.only(
                        top: Responsive.isMobile(context) &&
                                game.mobileUpperPosiion != null
                            ? game.mobileUpperPosiion!
                            : Responsive.isTablet(context) &&
                                    game.tabletUpperPosition != null
                                ? game.tabletUpperPosition!
                                : Responsive.isDesktop(context) &&
                                        game.desktopUpperPosition != null
                                    ? game.desktopUpperPosition!
                                    : game.upperPosition,
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
                      height: 100,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 30,
                          ),
                          child: Text(
                            game.description,
                            style: TextStyle(
                              color: Theme.of(context).scaffoldBackgroundColor,
                              fontSize: Responsive.isMobile(context) ||
                                      Responsive.isTablet(context)
                                  ? 16
                                  : 18,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(
                        bottom: Responsive.isMobile(context) &&
                                game.mobileLowerPosiion != null
                            ? game.mobileLowerPosiion!
                            : Responsive.isTablet(context) &&
                                    game.tabletLowerPosition != null
                                ? game.tabletLowerPosition!
                                : Responsive.isDesktop(context) &&
                                        game.desktopLowerPosition != null
                                    ? game.desktopLowerPosition!
                                    : game.lowerPosition,
                      ),
                      child: ShaderMask(
                        shaderCallback: (Rect rect) {
                          return LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.transparent,
                              Theme.of(context).scaffoldBackgroundColor,
                              Theme.of(context).scaffoldBackgroundColor,
                              Colors.transparent,
                            ],
                            stops: [
                              0.0,
                              Responsive.isMobile(context) ? 0.05 : 0.1,
                              Responsive.isMobile(context) ? 0.95 : 0.9,
                              1.0,
                            ],
                          ).createShader(rect);
                        },
                        child: Container(
                          margin: const EdgeInsets.only(
                              // top: 300,
                              // top: 100,
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
                          height: 100,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 30,
                              ),
                              child: ActionLink(
                                text: game.callToAction,
                                onTap: () => context.go(game.onTapScreen),
                                navLink: game.navLink,
                                fontSize: Responsive.isMobile(context) ||
                                        Responsive.isTablet(context)
                                    ? Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .fontSize
                                    : 18,
                                color:
                                    Theme.of(context).scaffoldBackgroundColor,
                                alignment: TextAlign.center,
                              ),
                            ),
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
