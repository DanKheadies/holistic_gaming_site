import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/screens/screens.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/home/test',
      builder: (context, state) => const TestScreen(),
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
      builder: (context, state) => const SplashScreen(),
    ),
    // ShellRoute(
    //   routes: [],
    //   builder: (context, state, child) {
    //     return BottomNav(child: child);
    //   },
    // ),
  ],
);
