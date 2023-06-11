import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class DavidVitaeAlphaRow extends StatelessWidget {
  const DavidVitaeAlphaRow({super.key});

  @override
  Widget build(BuildContext context) {
    InformationBlock buildPersonalInfo() {
      return const InformationBlock(
        title: 'Personal Information',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: double.infinity),
            Text('David William Corso'),
            SizedBox(height: 5),
            Text('(864) 316-6077'),
            SizedBox(height: 5),
            Text('davidwcorso@gmail.com'),
            SizedBox(height: 5),
            Text('April 19, 1990'),
            SizedBox(height: 5),
            Text('Do good, die great.'),
          ],
        ),
      );
    }

    InformationBlock buildAreasInterest() {
      return const InformationBlock(
        title: 'Areas of Interest',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: double.infinity),
            Text('Games'),
            SizedBox(height: 5),
            Text('Psychology'),
            SizedBox(height: 5),
            Text('Neuroscience'),
            SizedBox(height: 5),
            Text('Biology'),
            SizedBox(height: 5),
            Text('Programming'),
            SizedBox(height: 5),
            Text('Education'),
            SizedBox(height: 5),
            Text('Research'),
          ],
        ),
      );
    }

    return Responsive.isDesktop(context) || Responsive.isWideDesktop(context)
        ? Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Flexible(
                flex: 1,
                child: SizedBox(),
              ),
              Flexible(
                flex: Responsive.isDesktop(context) ? 7 : 5,
                child: buildPersonalInfo(),
              ),
              Flexible(
                flex: Responsive.isDesktop(context) ? 7 : 5,
                child: buildAreasInterest(),
              ),
              const Flexible(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          )
        : Column(
            children: [
              buildPersonalInfo(),
              buildAreasInterest(),
            ],
          );
  }
}
