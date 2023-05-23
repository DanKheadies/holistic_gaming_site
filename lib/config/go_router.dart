import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/screens/screens.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      // builder: (context, state) => const HomeScreen(),
      pageBuilder: (context, state) => CustomTransitionPage(
        child: const HomeScreen(),
        transitionsBuilder: (context, animation, secondaryAnimation, child) =>
            FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    ),
    GoRoute(
      path: '/home/test',
      name: 'test',
      // builder: (context, state) => const TestScreen(),
      pageBuilder: (context, state) => CustomTransitionPage(
        key: state.pageKey,
        child: const TestScreen(),
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
      // builder: (context, state) => const GamesScreen(),
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
      path: '/research',
      name: 'research',
      // builder: (context, state) => const ResearchScreen(),
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
    // Note: syntax don't seem right (?)
    // GoRoute(
    //   path: '/profile/:userid?filter=xyz',
    //   builder: (context, state) => ProfileScreen(
    //     userId: state.params['userid'],
    //     filter: state.queryParams[filter],
    //   ),
    // ),
    GoRoute(
      path: '/',
      name: 'splash',
      // builder: (context, state) => const SplashScreen(),
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
  // errorPageBuilder: (context, state) => const MaterialPage(
  //   child: ErrorScreen(),
  // ),
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
