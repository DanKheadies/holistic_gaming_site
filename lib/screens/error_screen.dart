import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteWrapper(
      child: Center(
        child: Text('Something went wrong.'),
      ),
    );
  }
}
