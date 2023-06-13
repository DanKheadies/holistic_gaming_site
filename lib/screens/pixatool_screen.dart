import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class PixaToolScreen extends StatelessWidget {
  const PixaToolScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      child: Column(
        children: [
          SquadSubAppBar(
            width: width,
          ),
          Container(
            width: width / 2,
            height: height,
            color: Colors.amber,
          ),
        ],
      ),
    );
  }
}
