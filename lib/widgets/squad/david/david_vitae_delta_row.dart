import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class DavidVitaeDeltaRow extends StatelessWidget {
  const DavidVitaeDeltaRow({super.key});

  @override
  Widget build(BuildContext context) {
    InformationBlock buildProfessionalSkills() {
      return const InformationBlock(
        title: 'Professional Skills',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: double.infinity),
            Text('Researching'),
            SizedBox(height: 5),
            Text('Analyzing user / student needs'),
            SizedBox(height: 5),
            Text('Documenting processes and workflows'),
            SizedBox(height: 5),
            Text('Identifying and writing-up objectives'),
            SizedBox(height: 5),
            Text('Applying educational methods'),
            SizedBox(height: 5),
            Text('Creating training materials'),
            SizedBox(height: 5),
            Text('Designing wireframes and interfaces'),
            SizedBox(height: 5),
            Text('Developing webpages with front and back-end services'),
            SizedBox(height: 5),
            Text('Scoping projects'),
            SizedBox(height: 5),
            Text('Managing a variety of resources, information, and tasks'),
            SizedBox(height: 5),
            Text('Working independently'),
            SizedBox(height: 5),
            Text('Working with a team'),
            SizedBox(height: 5),
            Text('Organized, resourceful, and meticulous'),
            SizedBox(height: 5),
            Text('Cognitively and metacognitively adept'),
            SizedBox(height: 5),
            Text('Connecting and networking'),
          ],
        ),
      );
    }

    InformationBlock buildTechnicalSkills() {
      return const InformationBlock(
        title: 'Areas of Interest',
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(width: double.infinity),
            Text('Programming'),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('C++'),
                  SizedBox(height: 5),
                  Text('C#'),
                  SizedBox(height: 5),
                  Text('CSS'),
                  SizedBox(height: 5),
                  Text('Dart'),
                  SizedBox(height: 5),
                  Text('HTML'),
                  SizedBox(height: 5),
                  Text('Javascript'),
                  SizedBox(height: 5),
                  Text('jQuery'),
                  SizedBox(height: 5),
                  Text('LESS'),
                  SizedBox(height: 5),
                  Text('PHP'),
                  SizedBox(height: 5),
                  Text('React'),
                  SizedBox(height: 5),
                  Text('ReactNative'),
                  SizedBox(height: 5),
                  Text('SCSS'),
                  SizedBox(height: 5),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text('Database Management'),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Firebase'),
                  SizedBox(height: 5),
                  Text('SQL'),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text('Programming Games'),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('GameMaker'),
                  SizedBox(height: 5),
                  Text('Unity'),
                  SizedBox(height: 5),
                  Text('Unreal Engine'),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text('Wireframing & Mockups'),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Adobe Fireworks'),
                  SizedBox(height: 5),
                  Text('OmniGraffle'),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text('Graphic Design'),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Adobe Flash'),
                  SizedBox(height: 5),
                  Text('Adobe Illustrator'),
                  SizedBox(height: 5),
                  Text('Adobe Photoshop'),
                  SizedBox(height: 5),
                  Text('GIMP'),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text('Modeling'),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Blender'),
                  SizedBox(height: 5),
                  Text('Tinkercad'),
                ],
              ),
            ),
            SizedBox(height: 5),
            Text('Multimedia Creation & Manipulation'),
            SizedBox(height: 5),
            Padding(
              padding: EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Adobe Premiere Pro'),
                  SizedBox(height: 5),
                  Text('iMovie'),
                  SizedBox(height: 5),
                  Text('Final Cut Pro'),
                  SizedBox(height: 5),
                  Text('PixaTool'),
                  SizedBox(height: 5),
                  Text('ScreenFlow'),
                ],
              ),
            ),
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
                child: buildProfessionalSkills(),
              ),
              Flexible(
                flex: Responsive.isDesktop(context) ? 7 : 5,
                child: buildTechnicalSkills(),
              ),
              const Flexible(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          )
        : Column(
            children: [
              buildProfessionalSkills(),
              buildTechnicalSkills(),
            ],
          );
  }
}
