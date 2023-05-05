import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
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
  // List<int> playTime = [
  //   6000, // 148, // ~6s | 6000ms
  //   3000, // 72,
  //   3500, // 192,
  //   5000, // 300, // ~5s
  //   3000, // 90,
  //   3500, // 102,
  //   2750, // 80,
  // ];

  late AnimationController aniCont;

  @override
  void initState() {
    super.initState();
    print('init');

    aniCont = AnimationController(
      vsync: this,
      // duration: const Duration(milliseconds: 3000),
    );

    fileIndex = Random().nextInt(files.length);
    print('fileIndex: $fileIndex');

    // runAni();
  }

  void runAni() {
    if (!played) {
      aniCont.forward();
      setState(() {
        played = true;
      });
    } else {
      aniCont.reverse();
      setState(() {
        played = false;
      });
    }
  }

  void changeImage() {
    setState(() {
      if (fileIndex >= files.length - 1) {
        fileIndex = 0;
      } else {
        fileIndex += 1;
      }
    });
    print('index: $fileIndex');
    // runAni();
    reset();
  }

  void reset() {
    // runAni();
    // aniCont.forward();
    // aniCont.reverse();
    aniCont.reset();
    aniCont.forward();
  }

  @override
  void dispose() {
    aniCont.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Holistic Gaming'),
      ),
      body: Center(
        child: Lottie.asset(
          'assets/images/${files[fileIndex]}.json',
          controller: aniCont,
          onLoaded: (composition) {
            aniCont
              ..duration = composition.duration
              ..forward();
          },
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: "btn1",
            onPressed: reset,
            tooltip: 'Reset',
            child: const Icon(Icons.restore),
          ),
          const SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            heroTag: "btn2",
            onPressed: changeImage,
            tooltip: 'change',
            child: const Icon(Icons.change_circle),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class DerpScreen extends StatelessWidget {
  const DerpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Derp'),
      ),
      body: const Center(
        child: Text('Derpsicle.'),
      ),
    );
  }
}
