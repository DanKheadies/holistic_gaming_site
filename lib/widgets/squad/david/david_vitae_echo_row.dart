import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class DavidVitaeEchoRow extends StatelessWidget {
  const DavidVitaeEchoRow({super.key});

  @override
  Widget build(BuildContext context) {
    return InformationRow(
      title: 'Projects, Publications & Presentations',
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ActionLink(
            text: 'GitHub (https://github.com/DanKheadies)',
            navLink: 'https://github.com/DanKheadies',
            onTap: () {},
          ),
          const SizedBox(height: 5),
          ActionLink(
            text: 'Holistic Gaming (https://holisticgaming.com/)',
            navLink: 'https://holisticgaming.com/',
            onTap: () {},
          ),
          const SizedBox(height: 5),
          ActionLink(
            text:
                'The Story of Dan Kheadies (https://holisticgaming.com/games/the-story-of-dan-kheadies)',
            onTap: () => context.goNamed('the-story-of-dan-kheadies'),
          ),
          const SizedBox(height: 5),
          ActionLink(
            text: 'Guess Who Colluded (https://guesswhocolluded.com/)',
            navLink: 'https://guesswhocolluded.com/',
            onTap: () {},
          ),
          const SizedBox(height: 5),
          ActionLink(
            text:
                'Explosions In My Pants — A Gentleman\'s Game (https://explosionsinmypants.com/)',
            navLink: 'https://explosionsinmypants.com/',
            onTap: () {},
          ),
          const SizedBox(height: 5),
          ActionLink(
            text:
                'Port Operations — Scheduling and Billing (http://portcall.com/)',
            navLink: 'http://portcall.com/',
            onTap: () {},
          ),
          const SizedBox(height: 5),
          ActionLink(
            text: 'Truth or Elaborate Lie (https://truthorelaboratelie.com/)',
            navLink: 'https://truthorelaboratelie.com/',
            onTap: () {},
          ),
          const SizedBox(height: 5),
          ActionLink(
            text: 'PixaTool Gallery (https://holisticgaming.com/pixatool)',
            onTap: () => context.goNamed('pixatool'),
          ),
          const SizedBox(height: 5),
          ActionLink(
            text: 'Immunis (https://immunisgame.com/)',
            navLink: 'https://immunisgame.com/',
            onTap: () {},
          ),
          const SizedBox(height: 5),
          ActionLink(
            text: 'Senior Thesis - Holistic Gaming (PDF)',
            onTap: () => context.go('/pdf/HolisticGaming8.0.pdf'),
          ),
          const SizedBox(height: 5),
          ActionLink(
            text:
                'A Review of Video Game Effects and Uses (https://sc.edu/about/offices_and_divisions/research/news_and_pubs/caravel/archive/2014/2014-caravel-video-games.php)',
            navLink:
                'https://sc.edu/about/offices_and_divisions/research/news_and_pubs/caravel/archive/2014/2014-caravel-video-games.php',
            onTap: () {},
          ),
          const SizedBox(height: 5),
          ActionLink(
            text:
                'Learning About Learning: Cognitive Gaming as a Technology of the Self (https://sc.edu/about/offices_and_divisions/research/news_and_pubs/caravel/archive/2012/2012-caravel-learning-about-learning.php)',
            navLink:
                'https://sc.edu/about/offices_and_divisions/research/news_and_pubs/caravel/archive/2012/2012-caravel-learning-about-learning.php',
            onTap: () {},
          ),
          const SizedBox(height: 5),
          const Text(
              'Psychological Assessment Training and Certification (www.bendergestalt.com) [RETIRED]'),
        ],
      ),
    );
  }
}
