import 'package:flutter/material.dart';

class TestScreen extends StatelessWidget {
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
