import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class DavidVitaeCharlieRow extends StatelessWidget {
  const DavidVitaeCharlieRow({super.key});

  @override
  Widget build(BuildContext context) {
    List<Widget> buildEmploymentRow(
      String organization,
      String location,
      String position,
      String timeframe,
      List<Widget> experiences,
    ) {
      return [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 7,
              child: Text(
                organization,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Flexible(
              flex:
                  Responsive.isMobile(context) || Responsive.isDesktop(context)
                      ? 4
                      : 3,
              child: Text(
                location,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Flexible(
                flex: 7,
                child: Text(
                  position,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              const SizedBox(width: 15),
              Flexible(
                flex: Responsive.isMobile(context) ||
                        Responsive.isDesktop(context)
                    ? 5
                    : 3,
                child: Text(
                  timeframe,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
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
              ...experiences,
            ],
          ),
        ),
      ];
    }

    return InformationRow(
      title: 'Employment and Experience',
      body: Column(
        children: [
          ...buildEmploymentRow(
            'DTFun LLC',
            'Durham, NC',
            'Chief Executive Officer & Owner',
            'April 2019 - Present',
            [
              const Text(
                  'Creating games to learn everything by learning everything about games.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'Island Innovations Ltd (PortCall Inc.)',
            'Durham, NC',
            'Chief Product Officer & Founder',
            'July 2015 - Present',
            [
              const Text(
                  'Designing and managing software for port operations, scheduling, resource tracking, and a number of other harbor activities.'),
              const SizedBox(height: 5),
              const Text(
                  'Developing instructional materials for the company\'s software.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'Imagine Chat! LLC',
            'Commerce Township, MI',
            'Chief Technology Officer & Founder',
            'June 2020 - June 2023',
            [
              const Text('Empowering the youth.'),
              const SizedBox(height: 5),
              const Text(
                  'Developing emotional intelligence in young children.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'Varsity Tutors',
            'Durham, NC',
            'Tutor',
            'April 2017 - July 2018',
            [
              const Text(
                  'Teach students new ways to understand biology and science information.'),
              const SizedBox(height: 5),
              const Text(
                  'Train students to take standardized tests, like the SAT and AP tests.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'The Mariner Group',
            'Columbia, SC',
            'User Experience Designer',
            'June 2013 - June 2015',
            [
              const Text(
                  'Facilitating the interaction between humans and technology.'),
              const SizedBox(height: 5),
              const Text(
                  'Designing and managing software for resource tracking and security, port and airport operations, and a number of other maritime organizations.'),
              const SizedBox(height: 5),
              const Text(
                  'Developing instructional materials for the company\'s software.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'University of South Carolina',
            'Columbia, SC',
            'Researcher',
            'May 2009 - June 2015',
            [
              const Text(
                  'Exploring the relationship between game elements and motivation.'),
              const SizedBox(height: 5),
              const Text(
                  'Received an Exploration Scholarship to review the cognitive, psychological, physical, and physiological effects inherent in video games.'),
              const SizedBox(height: 5),
              const Text(
                  'Received an Exploration Scholarship to help design and develop an immunology game.'),
              const SizedBox(height: 5),
              const Text(
                  'Received a Magellan Scholarship to analyze the cognitive and metacognitive effects inherent in video games.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'ACE Mulching',
            'Spartanburg, SC',
            'King',
            'May 2008 - June 2015',
            [
              const Text('Assessing and spreading mulch.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'Immunis, LLC.',
            'Columbia, SC',
            'Founder & Chief Operations Officer',
            'May 2012 - May 2015',
            [
              const Text(
                  'Designing, developing, and managing an educational game on immunology.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'Particle Systems, LLC.',
            'Columbia, SC',
            'Founder & Chief Executive Officer',
            'April 2011 - May 2015',
            [
              const Text(
                  'Dissecting and organizing educational concepts to create optimal learning experiences.'),
              const SizedBox(height: 5),
              const Text(
                  'Designing and developing educational games that improve the quality of our lives.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'Round River Farms',
            'Leesville, SC',
            'Farm Hand',
            'May 2013 - July 2013',
            [
              const Text(
                  'Planting, sustaining, harvesting, and delivering CSA produce.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'University of South Carolina\'s College of Education',
            'Columbia, SC',
            'Researcher',
            'August 2012 - March 2013',
            [
              const Text(
                  'Creating electronic learning modules for EDPY 401 - Learners and Diversity in Learning.'),
            ],
          ),
          const SizedBox(height: 20),
          ...buildEmploymentRow(
            'Spartanburg Methodist College',
            'Spartanburg, SC',
            'Facility Manager Assistant',
            'May 2012 - August 2012',
            [
              const Text('Helped maintain the school grounds.'),
            ],
          ),
        ],
      ),
    );
  }
}
