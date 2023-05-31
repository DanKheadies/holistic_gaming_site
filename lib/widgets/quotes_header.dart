import 'dart:math';

import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/data/data.dart';

class QuotesHeader extends StatelessWidget {
  const QuotesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      color: Theme.of(context).colorScheme.tertiary,
      width: double.infinity,
      child: Text(
        quotes[Random().nextInt(quotes.length)],
        textAlign: TextAlign.center,
      ),
    );
  }
}
