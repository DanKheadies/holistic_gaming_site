import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class SuperBestFriendsScreen extends StatelessWidget {
  const SuperBestFriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    List<Widget> buildGameTiles() {
      return [
        GameTile(
          imageUrl: 'assets/images/games/generic-logos/browsers.png',
          title: 'Browser',
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'v1.0',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface.withAlpha(150),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'WebGL is compatible with Firefox, Chrome, Safari and Edge. Chrome & Firefox are recommended. Not compatible with mobile browsers.',
              ),
            ],
          ),
          handlePress: () async {
            final Uri url = Uri.parse(
              'https://truthorelaboratelie.com/the-super-best-friends/index.html',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Icons.play_arrow,
          color: Colors.orange,
          width: width,
        ),
        GameTile(
          imageUrl: 'assets/images/games/generic-logos/windows.png',
          title: 'Windows',
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'v1.0',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface.withAlpha(150),
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Download this ZIP file.',
              ),
              const Text('Open the ZIP file.,'),
              const Text(
                'Extract the .EXE, .DLL, and _DATA files to the same location.',
              ),
              const Text(
                'Run the .EXE and enjoy.',
              ),
            ],
          ),
          handlePress: () async {
            final Uri url = Uri.parse(
              'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/games%2Ftdsbf.1.0.windows.zip?alt=media&token=1469ac1c-46e0-4d55-b1ca-c33c9466e44c',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Icons.download,
          color: Colors.blue,
          width: width,
        ),
        GameTile(
          imageUrl: 'assets/images/games/generic-logos/mac.png',
          title: 'Mac',
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'v1.0',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.surface.withAlpha(150),
                ),
              ),
              const SizedBox(height: 8),
              ActionLink(
                text: 'Download and install WineBottler.',
                navLink: 'https://winebottler.kronenberg.org/',
                onTap: () {},
              ),
              const Text(
                'Download this ZIP file.',
              ),
              const Text(
                'Open the ZIP file.',
              ),
              const Text(
                'Run the .EXE with WineBottler.',
              ),
              const Text(
                'Enjoy.',
              ),
            ],
          ),
          handlePress: () async {
            final Uri url = Uri.parse(
              'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/games%2Ftdsbf.1.0.mac.zip?alt=media&token=dac7b593-e008-494c-8436-73f9c1e89b5a',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Icons.download,
          color: Colors.grey,
          width: width,
        ),
      ];
    }

    return SiteWrapper(
      screen: 'Super Best Friends',
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
                        'assets/images/games/td-sbf-td.png',
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
                              'assets/images/games/td-sbf-td.png',
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
