import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lottie/lottie.dart';

// import 'package:holistic_gaming_site/screens/screens.dart';

class SplashScreen extends StatefulWidget {
  // static const String routeName = '/';
  // static Route route() {
  //   return MaterialPageRoute(
  //     builder: (_) => const SplashScreen(),
  //     settings: const RouteSettings(name: routeName),
  //   );
  // }

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
    print('splash init');

    aniCont = AnimationController(
      vsync: this,
    );

    fileIndex = Random().nextInt(files.length);
  }

  // void changeImage() {
  //   setState(() {
  //     if (fileIndex >= files.length - 1) {
  //       fileIndex = 0;
  //     } else {
  //       fileIndex += 1;
  //     }
  //   });

  //   reset();
  // }

  // void reset() {
  //   aniCont.reset();
  //   aniCont.forward();
  // }

  @override
  void dispose() {
    aniCont.dispose();
    navTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Holistic Gaming'),
      // ),
      body: Center(
        child: Lottie.asset(
          'images/splash/${files[fileIndex]}.json',
          controller: aniCont,
          onLoaded: (composition) {
            // if (fileIndex == 6) {
            //   aniCont
            //     ..duration = composition.duration
            //     ..forward()
            //     ..repeat();
            //   navTimer = Timer(
            //     composition.duration * 2,
            //     () => Navigator.of(context).pushNamedAndRemoveUntil(
            //       HomeScreen.routeName,
            //       (route) => false,
            //     ),
            //   );
            // } else {
            aniCont
              ..duration = composition.duration
              ..forward();
            // if (Navigator.of(context).)
            // TODO: avoid timer if current path is not '/'
            navTimer = Timer(
              composition.duration,
              () {
                print('daco');
                if (ModalRoute.of(context) != null &&
                    ModalRoute.of(context)!.settings.name == '/') {
                  print('taco');
                  print(ModalRoute.of(context)!.settings.name);
                  // Navigator.of(context).pushNamed(
                  //   HomeScreen.routeName,
                  // );
                  context.go('/home');
                }
              },
            );
            // }
          },
        ),
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     FloatingActionButton(
      //       heroTag: "btn1",
      //       onPressed: reset,
      //       tooltip: 'Reset',
      //       child: const Icon(Icons.restore),
      //     ),
      //     const SizedBox(
      //       width: 15,
      //     ),
      //     FloatingActionButton(
      //       heroTag: "btn2",
      //       onPressed: changeImage,
      //       tooltip: 'change',
      //       child: const Icon(Icons.change_circle),
      //     ),
      //   ],
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
