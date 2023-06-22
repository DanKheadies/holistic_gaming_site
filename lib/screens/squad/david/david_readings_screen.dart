import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/models/models.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class DavidReadingsScreen extends StatelessWidget {
  const DavidReadingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    void toSite(String site) async {
      final Uri url = Uri.parse(site);
      if (!await launchUrl(url)) {
        throw Exception('Could not launch $url');
      }
    }

    return SiteWrapper(
      screen: 'David - Readings',
      child: Column(
        children: [
          SquadSubAppBar(
            width: width,
          ),
          const Padding(
            padding: EdgeInsets.all(25),
            child: Text(
                'This \'complete\' reading list is a reflection of what I\'ve read, what I\'ve listen to, what I\'m in to, and what I know. Note: this list does not include the slew of books, papers, articles, and websites that I\'ve read (and half-read) for classes, independent projects, etc. All images are attributed to their respective author and publishing company. Click an image to view it in Amazon.'),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: Responsive.isMobile(context)
                    ? 1
                    : Responsive.isTablet(context)
                        ? 2
                        : Responsive.isDesktop(context)
                            ? 3
                            : 4,
              ),
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: ReadingImageLink.davidsReadings.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 25),
                  child: InkWell(
                    onTap: () => toSite(
                      ReadingImageLink.davidsReadings[index].linkUrl,
                    ),
                    child: Image.asset(
                      ReadingImageLink.davidsReadings[index].imageUrl,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
