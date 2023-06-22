import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteWrapper(
      screen: 'Error',
      child: SizedBox(
        height: MediaQuery.of(context).size.height - 56,
        width: MediaQuery.of(context).size.width,
        child: const Center(
          child: Text('Something went wrong.'),
        ),
      ),
    );
  }
}
