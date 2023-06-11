import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class DavidVitaeBravoRow extends StatelessWidget {
  const DavidVitaeBravoRow({super.key});

  @override
  Widget build(BuildContext context) {
    InformationBlock buildCourses() {
      return const InformationBlock(
        title: 'Massive Open Online Courses',
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Udemy.com',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '2015 - present',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: double.infinity),
                  Text('Adobe Illustrator'),
                  SizedBox(height: 5),
                  Text('Angular'),
                  SizedBox(height: 5),
                  Text('Blender'),
                  SizedBox(height: 5),
                  Text('C#'),
                  SizedBox(height: 5),
                  Text('C++'),
                  SizedBox(height: 5),
                  Text('D3.js'),
                  SizedBox(height: 5),
                  Text('Expo'),
                  SizedBox(height: 5),
                  Text('Flutter/Dart'),
                  SizedBox(height: 5),
                  Text('Node.js'),
                  SizedBox(height: 5),
                  Text('PHP'),
                  SizedBox(height: 5),
                  Text('Progresive Web Apps'),
                  SizedBox(height: 5),
                  Text('Python'),
                  SizedBox(height: 5),
                  Text('ReactJS'),
                  SizedBox(height: 5),
                  Text('ReactNative'),
                  SizedBox(height: 5),
                  Text('Responsive Web Design'),
                  SizedBox(height: 5),
                  Text('SQL'),
                  SizedBox(height: 5),
                  Text('Swift & iOS'),
                  SizedBox(height: 5),
                  Text('Typescript'),
                  SizedBox(height: 5),
                  Text('Unity'),
                  SizedBox(height: 5),
                  Text('Unreal Engine'),
                  SizedBox(height: 5),
                  Text('User Experience Design'),
                  SizedBox(height: 5),
                  Text('Web Development'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Codecademy.com',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  '2014 - 2017',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 8,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: double.infinity),
                  Text('CSS'),
                  SizedBox(height: 5),
                  Text('GIT'),
                  SizedBox(height: 5),
                  Text('HTML'),
                  SizedBox(height: 5),
                  Text('JavaScript'),
                  SizedBox(height: 5),
                  Text('jQuery#'),
                  SizedBox(height: 5),
                  Text('PHP'),
                  SizedBox(height: 5),
                  Text('SASS'),
                ],
              ),
            ),
          ],
        ),
      );
    }

    List<Widget> buildEducationRow(
      String institution,
      String years,
      String status,
    ) {
      return [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 7,
              child: Text(
                institution,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Flexible(
              flex:
                  Responsive.isMobile(context) || Responsive.isDesktop(context)
                      ? 3
                      : 2,
              child: Text(
                years,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
            vertical: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: double.infinity),
              Text(status),
            ],
          ),
        ),
      ];
    }

    InformationBlock buildEducation() {
      return InformationBlock(
        title: 'Traditional Education',
        body: Column(
          children: [
            ...buildEducationRow(
              'The Graduate School at the University of South Carolina',
              '2013 - 2015',
              'Master of Education (M.Ed.) in Educational Technology, Magna Cum Laude',
            ),
            const SizedBox(height: 20),
            ...buildEducationRow(
              'South Carolina Honors College - The University of South Carolina',
              '2008 - 2013',
              'Bachelor of Biological Sciences, Minor in Psychology & a focus on Holistic Gaming, Cum Laude',
            ),
            const SizedBox(height: 20),
            ...buildEducationRow(
              'Dorman High School',
              '2004 - 2008',
              '10th of 569',
            ),
            const SizedBox(height: 20),
            ...buildEducationRow(
              'RP Dawkins Middle School',
              '2001 - 2004',
              'Top 50',
            ),
            const SizedBox(height: 20),
            ...buildEducationRow(
              'St. Paul the Apostle Catholic School',
              '1997 - 2001',
              'In Jesus\'s good graces',
            ),
            const SizedBox(height: 20),
            ...buildEducationRow(
              'St. Ann Catholic School',
              '1995 - 1997',
              'The start of Witness Protection',
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
                child: buildCourses(),
              ),
              Flexible(
                flex: Responsive.isDesktop(context) ? 7 : 5,
                child: buildEducation(),
              ),
              const Flexible(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          )
        : Column(
            children: [
              buildCourses(),
              buildEducation(),
            ],
          );
  }
}
