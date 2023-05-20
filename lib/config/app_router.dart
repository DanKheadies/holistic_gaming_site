import 'package:flutter/material.dart';

// import 'package:holistic_gaming_site/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route: ${settings.name}');

    // if (settings.name == '/' || settings.name == SplashScreen.routeName) {
    //   print('route splash');
    //   return SplashScreen.route();
    // } else if (settings.name == HomeScreen.routeName) {
    //   print('route home');
    //   return HomeScreen.route();
    // } else if (settings.name == TestScreen.routeName) {
    //   print('route test');
    //   return TestScreen.route();
    // } else {
    //   print('route error');
    //   return errorRoute();
    // }

    switch (settings.name) {
      // case '/':
      //   // case SplashScreen.routeName:
      //   return SplashScreen.route();
      // case HomeScreen.routeName:
      //   return HomeScreen.route();
      // case TestScreen.routeName:
      //   return TestScreen.route();

      default:
        return errorRoute();
    }
  }

  static Route errorRoute() {
    return MaterialPageRoute(
      settings: const RouteSettings(
        name: '/error',
      ),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('Error'),
        ),
      ),
    );
  }
}
