import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:holistic_gaming_site/screens/pdf_screen.dart';
import 'package:holistic_gaming_site/screens/pixatool_screen.dart';

import 'package:holistic_gaming_site/screens/screens.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    // GoRoute(
    //   path: '/home/test',
    //   name: 'test',
    //   // builder: (context, state) => const TestScreen(),
    //   pageBuilder: (context, state) => CustomTransitionPage(
    //     key: state.pageKey,
    //     child: const TestScreen(),
    //     transitionsBuilder: (context, animation, secondaryAnimation, child) =>
    //         FadeTransition(
    //       opacity: animation,
    //       child: child,
    //     ),
    //   ),
    // ),
    GoRoute(
      path: '/contact',
      name: 'contact',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const ContactScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/games',
      name: 'games',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const GamesScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/games/corso-games',
      name: 'corso-games',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const CorsoGamesScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/games/ploys-r-us',
      name: 'ploys-r-us',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const PloysRUsScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/games/super-best-friends',
      name: 'super-best-friends',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const SuperBestFriendsScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/games/the-story-of-dan-kheadies',
      name: 'the-story-of-dan-kheadies',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const TheStoryOfDanKheadiesScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    // GoRoute(
    //   path: '/pdf',
    //   name: 'pdf',
    //   builder: (context, state) => const PDFScreen(pdfAsset: ''),
    // ),
    GoRoute(
      path: '/pdf/:pdfAsset',
      name: 'pdf/:pdfAsset',
      builder: (context, state) => PDFScreen(
        pdfAsset: state.pathParameters['pdfAsset'],
      ),
    ),
    GoRoute(
      path: '/pixatool',
      name: 'pixatool',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const PixaToolScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/research',
      name: 'research',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const ResearchScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/research/:article',
      name: 'research-article/:article',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: ResearchScreen(
          article: state.pathParameters['article'],
        ),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
      // builder: (context, state) => ResearchScreen(
      //   article: state.pathParameters['article'],
      // ),
    ),
    GoRoute(
      path: '/squad',
      name: 'squad',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const SquadScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/squad/david',
      name: 'squad-david',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const DavidScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/squad/david/edtech',
      name: 'squad-david-edtech',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const DavidEdTechScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/squad/david/readings',
      name: 'squad-david-readings',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const DavidReadingsScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/squad/david/vitae',
      name: 'squad-david-vitae',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const DavidVitaeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/thanks',
      name: 'thanks',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const ThanksScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/thanks-kinda',
      name: 'thanks-kinda',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const ThanksKindaScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/',
      name: 'splash',
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const SplashScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    // ShellRoute(
    //   routes: [],
    //   builder: (context, state, child) {
    //     return BottomNav(child: child);
    //   },
    // ),
  ],
  errorPageBuilder: (context, state) => CustomTransitionPage(
    key: state.pageKey,
    name: 'error',
    child: const ErrorScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) =>
        FadeTransition(
      opacity: animation,
      child: child,
    ),
  ),
);
