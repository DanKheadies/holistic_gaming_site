import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      name: 'research-article',
      builder: (context, state) => ResearchScreen(
        article: state.pathParameters['article'],
      ),
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
      name: 'david',
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
