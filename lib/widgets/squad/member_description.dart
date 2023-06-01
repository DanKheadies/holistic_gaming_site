import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class MemberDescription extends StatelessWidget {
  const MemberDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('I\'m a jack of all trades.'),
        const SizedBox(height: 15),
        const Text('I work a lot.'),
        const Text('I play a lot.'),
        const Text('I read a lot.'),
        const Text('I do a lot.'),
        const SizedBox(height: 15),
        const Text('If you\'ve got time..'),
        ActionLink(
          text: 'Checkout my portfolio.',
          onTap: () => context.goNamed('david'),
          color: Theme.of(context).colorScheme.surface,
          fontSize: 16,
        ),
      ],
    );
  }
}
