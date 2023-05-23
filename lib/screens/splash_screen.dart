import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  bool played = false;
  int fileIndex = 0;
  List<String> files = [
    'consoles',
    'joystick',
    'ps-controller',
    'snake',
    'snes',
    'switch',
    'vr',
  ];

  late AnimationController aniCont;
  late Timer navTimer;

  @override
  void initState() {
    super.initState();

    aniCont = AnimationController(
      vsync: this,
    );

    fileIndex = Random().nextInt(files.length);
  }

  @override
  void dispose() {
    aniCont.dispose();
    navTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.asset(
          'images/splash/${files[fileIndex]}.json',
          controller: aniCont,
          onLoaded: (composition) {
            aniCont
              ..duration = composition.duration
              ..forward();

            navTimer = Timer(
              composition.duration,
              () => context.go('/home'),
            );
          },
        ),
      ),
    );
  }
}
