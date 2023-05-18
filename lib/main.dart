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

  void changeImage() {
    setState(() {
      if (fileIndex >= files.length - 1) {
        fileIndex = 0;
      } else {
        fileIndex += 1;
      }
    });

    reset();
  }

  void reset() {
    aniCont.reset();
    aniCont.forward();
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
      appBar: AppBar(
        title: const Text('Holistic Gaming'),
      ),
      body: Center(
        child: Lottie.asset(
          'assets/images/${files[fileIndex]}.json',
          controller: aniCont,
          onLoaded: (composition) {
            if (fileIndex == 6) {
              aniCont
                ..duration = composition.duration
                ..forward()
                ..repeat();
            } else {
              aniCont
                ..duration = composition.duration
                ..forward();
              navTimer = Timer(
                composition.duration,
                () => Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const DerpScreen(),
                  ),
                ),
              );
            }
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
