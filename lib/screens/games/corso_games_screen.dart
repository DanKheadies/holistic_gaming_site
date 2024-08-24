import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class CorsoGamesScreen extends StatelessWidget {
  const CorsoGamesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List<Widget> buildGameTiles() {
      return [
        GameTile(
          imageUrl: 'assets/images/games/generic-logos/android.png',
          title: 'Android',
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'v2.1.3',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface.withAlpha(150),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Download from Google Play for a mobile device.',
              ),
            ],
          ),
          handlePress: () async {
            final Uri url = Uri.parse(
              'https://play.google.com/store/apps/details?id=com.dtfun.corso_games_app&hl=en_SG&gl=US',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Icons.android,
          color: Colors.lime,
          width: width,
        ),
        GameTile(
          imageUrl: 'assets/images/games/generic-logos/ios.png',
          title: 'iOS',
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'v2.1.3',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface.withAlpha(150),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Download from the App Store for a mobile device.',
              ),
            ],
          ),
          handlePress: () async {
            final Uri url = Uri.parse(
              'https://apps.apple.com/us/app/corso-games/id1617108711',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Icons.ios_share,
          color: Colors.lightBlue,
          width: width,
        ),
        GameTile(
          imageUrl: 'assets/images/games/generic-logos/browsers.png',
          title: 'Web',
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'v2.1.3',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface.withAlpha(150),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Access view your browser. Full screen recommended.',
              ),
            ],
          ),
          handlePress: () async {
            final Uri url = Uri.parse(
              'https://corso-games-app.web.app/#/',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Icons.ios_share,
          color: Colors.orange,
          width: width,
        ),
      ];
    }

    return SiteWrapper(
      screen: 'Corso Games',
      alwaysShowFooter: true,
      child: Stack(
        children: [
          SizedBox(height: height - 56),
          Responsive.isMobile(context) || Responsive.isTablet(context)
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: width,
                      height: 25,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        'assets/images/games/corso-games.png',
                        width: width / 1.25,
                      ),
                    ),
                    ...buildGameTiles(),
                    const SizedBox(height: 75),
                  ],
                )
              : Padding(
                  padding: const EdgeInsets.only(
                    top: 25,
                  ),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 50,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.asset(
                              'assets/images/games/corso-games.png',
                              width: width / 2,
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Column(
                          children: [
                            const SizedBox(height: 50),
                            ...buildGameTiles(),
                            const SizedBox(height: 50),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
        ],
      ),
    );
  }
}
