import 'dart:async';

import 'package:flutter/material.dart';

class HomeRightCol extends StatefulWidget {
  const HomeRightCol({super.key});

  @override
  State<HomeRightCol> createState() => _HomeRightColState();
}

class _HomeRightColState extends State<HomeRightCol> {
  bool showImage1 = true;
  bool showImage2 = false;

  late Timer image1;
  late Timer image2;

  @override
  void initState() {
    super.initState();

    image1 = Timer.periodic(
      const Duration(milliseconds: 5000),
      (value) {
        setState(() {
          showImage1 = true;
          showImage2 = false;
        });
      },
    );

    image2 = Timer.periodic(
      const Duration(milliseconds: 10000),
      (value) {
        setState(() {
          showImage1 = false;
          showImage2 = true;
        });
      },
    );
  }

  @override
  void dispose() {
    image1.cancel();
    image2.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Row(),
        AnimatedOpacity(
          opacity: showImage1 ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: Image.asset(
            'assets/images/connections/hg-conn.png',
            fit: BoxFit.fill,
          ),
        ),
        AnimatedOpacity(
          opacity: showImage2 ? 1 : 0,
          duration: const Duration(milliseconds: 500),
          child: Image.asset(
            'assets/images/connections/hg-conn-games.png',
            fit: BoxFit.fill,
          ),
        ),
      ],
    );
  }
}
