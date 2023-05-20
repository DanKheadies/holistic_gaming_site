// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/screens/screens.dart';

final GoRouter goRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
      // builder: (context, state) {
      //   print('go home');
      //   return const HomeScreen();
      // },
    ),
    GoRoute(
      path: '/home/test',
      builder: (context, state) => const TestScreen(),
      // builder: (context, state) {
      //   print('go test');
      //   return const TestScreen(),
      // },
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
      // builder: (context, state) {
      //   print('go splash');
      //   return const SplashScreen();
      // },
      // routes: <RouteBase>[
      //   GoRoute(
      //     path: 'home',
      //     builder: (BuildContext context, GoRouterState state) {
      //       print('go home');
      //       return const HomeScreen();
      //     },
      //   ),
      //   GoRoute(
      //     path: 'home/test',
      //     builder: (BuildContext context, GoRouterState state) {
      //       print('go home/test');
      //       return const TestScreen();
      //     },
      //   ),
      // ],
    ),
  ],
); 

// {
//   static Route onGenerateRoute(RouteSettings settings) {
//     print('This is route: ${settings.name}');

//     // if (settings.name == '/' || settings.name == SplashScreen.routeName) {
//     //   print('route splash');
//     //   return SplashScreen.route();
//     // } else if (settings.name == HomeScreen.routeName) {
//     //   print('route home');
//     //   return HomeScreen.route();
//     // } else if (settings.name == TestScreen.routeName) {
//     //   print('route test');
//     //   return TestScreen.route();
//     // } else {
//     //   print('route error');
//     //   return errorRoute();
//     // }

//     switch (settings.name) {
//       case '/':
//         // case SplashScreen.routeName:
//         return SplashScreen.route();
//       case HomeScreen.routeName:
//         return HomeScreen.route();
//       case TestScreen.routeName:
//         return TestScreen.route();

//       default:
//         return errorRoute();
//     }
//   }

//   static Route errorRoute() {
//     return MaterialPageRoute(
//       settings: const RouteSettings(
//         name: '/error',
//       ),
//       builder: (_) => Scaffold(
//         appBar: AppBar(
//           title: const Text('Error'),
//         ),
//       ),
//     );
//   }
// }
