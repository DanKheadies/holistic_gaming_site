import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class SquadSubAppBar extends StatelessWidget {
  final double width;

  const SquadSubAppBar({
    super.key,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.tertiary,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SquadSubHoriItem(
            label: 'David',
            route: '/squad/david',
            namedRoute: 'squad-david',
          ),
          SizedBox(width: 10),
          SquadSubHoriItem(
            label: 'EdTech',
            route: '/squad/david/edtech',
            namedRoute: 'squad-david-edtech',
          ),
          SizedBox(width: 10),
          SquadSubHoriItem(
            label: 'Readings',
            route: '/squad/david/readings',
            namedRoute: 'squad-david-readings',
          ),
          SizedBox(width: 10),
          SquadSubHoriItem(
            label: 'Vitae',
            route: '/squad/david/vitae',
            namedRoute: 'squad-david-vitae',
          ),
        ],
      ),
    );
  }
}
