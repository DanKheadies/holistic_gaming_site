import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class SquadScreen extends StatelessWidget {
  const SquadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteWrapper(
      alwaysShowFooter: true,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 56,
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SquadMember(
                name: 'David Corso',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
