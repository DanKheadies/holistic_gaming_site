import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class TheStoryOfDanKheadiesScreen extends StatelessWidget {
  const TheStoryOfDanKheadiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
                'v1.1.0',
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
              'https://truthorelaboratelie.com/the-story-of-dan-kheadies/index.html',
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
                'v1.1.0',
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
              'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/games%2Ftsodk.windows.zip?alt=media&token=13e1e5c2-3232-4b26-8af8-067eac56d5e0',
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
                'v1.1.0',
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
              'https://firebasestorage.googleapis.com/v0/b/holistic-gaming-site.appspot.com/o/games%2Ftsodk.mac.zip?alt=media&token=b9d6fd2f-eab5-412b-b24f-0903d3169869',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Icons.download,
          color: Colors.grey,
          width: width,
        ),
        GameTile(
          imageUrl: 'assets/images/games/generic-logos/android.png',
          title: 'Android',
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'v1.1.0',
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
              'https://play.google.com/store/apps/details?id=com.DTFun.Dan_Kheadies&hl=en_SG&gl=US',
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
                'v1.1.0',
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
              'https://apps.apple.com/us/app/the-story-of-dan-kheadies/id1577088555#?platform=iphone',
            );
            if (!await launchUrl(url)) {
              throw Exception('Could not launch $url');
            }
          },
          icon: Icons.ios_share,
          color: Colors.lightBlue,
          width: width,
        ),
      ];
    }

    return SiteWrapper(
      child: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: width),
                Image.asset(
                  'assets/images/games/the-story-of-dan-kheadies.png',
                  width: width / 1.25,
                ),
                ...buildGameTiles(),
                const SizedBox(height: 75),
              ],
            )
          : Row(
              children: [
                Flexible(
                  flex: 1,
                  child: Image.asset(
                    'assets/images/games/the-story-of-dan-kheadies.png',
                    width: width / 2,
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
    );
  }
}
