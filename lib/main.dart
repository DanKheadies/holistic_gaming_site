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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int fileIndex = 0;
  List<String> files = [
    'consoles',
    // 'gpu',
    'joystick',
    'ps-controller',
    'snake',
    'snes',
    'switch',
    'vr',
  ];
  List<int> playTime = [
    6000, // 148, // ~6s | 6000ms
    // 3210,
    3000, // 72,
    3500, // 192,
    5000, // 300, // ~5s
    3000, // 90,
    3500, // 102,
    2750, // 80,
  ];
  late Timer navTimer;

  @override
  void initState() {
    super.initState();
    print('init');

    fileIndex = Random().nextInt(files.length);

    navTimer = Timer(
      Duration(milliseconds: playTime[fileIndex]),
      () => Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const DerpScreen(),
        ),
      ),
      // () => print('end ani #$fileIndex'),
    );
  }

  void changeImage() {
    setState(() {
      if (fileIndex >= files.length) {
        fileIndex = 0;
      } else {
        fileIndex += 1;
      }

      navTimer.cancel();
      navTimer = Timer(
        Duration(milliseconds: playTime[fileIndex]),
        () => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const DerpScreen(),
          ),
        ),
        // () => print('end ani #$fileIndex'),
      );
    });
  }

  void reset() {
    setState(() {
      navTimer.cancel();
      navTimer = Timer(
        Duration(milliseconds: playTime[fileIndex]),
        () => Navigator.of(context).push(
          MaterialPageRoute<void>(
            builder: (BuildContext context) => const DerpScreen(),
          ),
        ),
        // () => print('end ani #$fileIndex'),
      );
    });
  }

  @override
  void dispose() {
    navTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Lottie.asset('assets/images/${files[fileIndex]}.json'),
        // child: Lottie.asset('assets/images/45082-game-controller.json'),
        // child: Lottie.asset('assets/images/45741-game-console-animation.json'),
        // child: Lottie.asset('assets/images/75126-gaming-console.json'),
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
            tooltip: 'Increment',
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
