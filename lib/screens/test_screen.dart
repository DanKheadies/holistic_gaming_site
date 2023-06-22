import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteWrapper(
      screen: 'Test',
      child: Center(
        child: Text('icles'),
      ),
    );
  }
}
