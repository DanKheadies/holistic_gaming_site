import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class DavidVitaeScreen extends StatelessWidget {
  const DavidVitaeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      child: Column(
        children: [
          SquadSubAppBar(
            width: width,
          ),
          const DavidVitaeAlphaRow(),
          const DavidVitaeBravoRow(),
          const DavidVitaeCharlieRow(),
          const DavidVitaeDeltaRow(),
          const DavidVitaeEchoRow(),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
