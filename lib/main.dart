import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/firebase_options.dart';
// import 'package:holistic_gaming_site/screens/screens.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const HolisticGaming());
}

class HolisticGaming extends StatelessWidget {
  const HolisticGaming({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      // theme: state == Brightness.dark ? darkTheme() : lightTheme(),
      routerConfig: goRouter,

      // initialRoute: SplashScreen.routeName,
      // onGenerateRoute: AppRouter.onGenerateRoute,
      // onGenerateInitialRoutes: AppRouter.onGenerateRoute,
      // onGenerateRoute: (settings) {
      //   print('Dis is route: ${settings.name}');
      //   // if (ModalRoute.of(context) != null) {
      //   //   print('tacos');
      //   //   print(ModalRoute.of(context)!.settings.name);
      //   //   // Navigator.of(context).pushNamed(
      //   //   //   HomeScreen.routeName,
      //   //   // );
      //   // } else {
      //   //   print('flames');
      //   // }

      //   switch (settings.name) {
      //     case '/':
      //       // case SplashScreen.routeName:
      //       return SplashScreen.route();
      //     case HomeScreen.routeName:
      //       return HomeScreen.route();
      //     case TestScreen.routeName:
      //       return TestScreen.route();

      //     default:
      //       return AppRouter.errorRoute();
      //   }
      // },
    );
  }
}
