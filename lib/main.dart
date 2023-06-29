import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/firebase_options.dart';

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
      theme: lightTheme(),
      // theme: ThemeData(),
      routerConfig: goRouter,
    );
  }
}
