import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
  // static const String routeName = '/home/test';
  // static Route route() {
  //   return MaterialPageRoute(
  //     builder: (_) => const TestScreen(),
  //     settings: const RouteSettings(name: routeName),
  //   );
  // }

  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test'),
        // automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text('icles'),
      ),
    );
  }
}
