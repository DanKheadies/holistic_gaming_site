import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class EdTechItem extends Equatable {
  final String title;
  final List<Widget> content;
  final Map<String, Widget>? subsetLists;
  final List<Widget>? extraContent;

  const EdTechItem({
    required this.title,
    required this.content,
    this.subsetLists,
    this.extraContent,
  });

  @override
  List<Object?> get props => [
        title,
        content,
        subsetLists,
        extraContent,
      ];

  static List<EdTechItem> edTechItemCollection = [
    const EdTechItem(
      title: 'Graduate Day (3m Thesis)',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You\'re smarter than you think. So keep playing.',
              ),
              SizedBox(height: 15),
              Text(
                'All games—board games, sports games, card games, dice games, video games, etc.—use and train our thinking abilities. These mental abilities are activated when we read directions, learn rules, move our bodies, organize units, spend resources, solve problems, and throughout all aspects of a game. Cognition is the ability to think, and cognitive abilities are the mental abilities we use to think. How we perceive an environment, what we attend to and focus on, what we remember, how we communicate, how we make decisions, solve problems, and reason all use and train our cognitive abilities. In a physical workout, we train our muscles to get bigger and stronger by using them. Likewise, in a mental workout, we train our mental abilities to get faster and smarter by using them. Gamers are atheletes, and like most of our olympic and sport athletes, we train every day.',
              ),
              SizedBox(height: 15),
              Text(
                'Whether it\'s a well structured, mental regiment or a naturally emerging jungle gym, games train our cognitive abilities: perception, attention, memory, communication, problem solving, decision making, and reasoning skills. A number of real-world activities use and train cognitive abilities too, such as conversating, reading, cooking, driving, dancing, working, and learning; however, gaming is an intense, flavorful form of learning that people have a higher affinity towards over most real-world activities. Games attract people. Games engage people. Games challenge people. Games motivate people. Games use and train our cognitive abilities, and we grow smarter every time we play a game. The more mindful we are of this mental training, the more we can control our mental growth and well-being.',
              ),
              SizedBox(height: 15),
              Text(
                'You\'re smarter than you think. So keep playing.',
              ),
            ],
          ),
        ),
      ],
    ),
    EdTechItem(
      title:
          'EdTech Portfolio (EDET 793 - Advanced Instructional Design and Development)',
      content: [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Throughout my time at the University of South Carolina\'s Graduate School, I have produced several artifacts that illustrate my Educational Technology skills, abilities, and knowledge. The artifacts below demonstrate my ability to apply instructional design principles to several domains, and these artifacts serve as a mark of proficiency for:',
              ),
              const SizedBox(height: 5),
              ActionLink(
                text:
                    'The Association for Educational Communications and Technology Standards for Education Programs',
                navLink: 'https://www.aect.org/docs/AECTstandards2012.pdf',
                onTap: () {},
              ),
            ],
          ),
        ),
      ],
      subsetLists: {
        'Portfolio Summary': const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Over the past two years, I\'ve learned how to:',
            ),
            SizedBox(height: 10),
            BulletItem(
              content: 'Analyze environments, research, and technology tools',
            ),
            BulletItem(
              content:
                  'Design storyboards, mockups, presentations, graphics, videos, and curriculums',
            ),
            BulletItem(
              content: 'Implement instructional materials remotely and on-site',
            ),
            BulletItem(
              content: 'Evaluate the efficacy of my materials',
            ),
            BulletItem(
              content:
                  'Iterate and modify projects in order to reach goals and outcomes',
            ),
            BulletItem(
              content:
                  'Collaborate with teachers and peers synchronously and asynchronously',
            ),
            BulletItem(
              content: 'Manage my time and energy',
            ),
            SizedBox(height: 20),
          ],
        ),
        'EdTech Growth': const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'I\'m pleased with where I started and how far I\'ve come. Since my first wikispaces for 603, I\'m proud of the work I\'ve created for each of these 12 Educational Technology (and Research) courses. For each article, I included an \'older\' project with a \'newer\' project, and I notice a difference in my work. My early work is good, but it reminds me of a novice sports player performing off of his athleticism. My later work looks like a seasoned veteran: cool, calm, and collected. These later projects contain more developed ideas and details, and they are also more refined. For example, I\'m extremely proud of the elegance and simplicity of my code for this website in comparison to my first \'custom\' site in EDET 703. It\'s also encouraging to see how focused and involved my work is towards games and gaming. I want to research, design, and develop games, and my work stands as a testament to that fight.',
            ),
            SizedBox(height: 10),
            Text(
              'Whether I jump right into my PhD to research games or I take time to refine my MEd skills, this graduate experience provides me with courage, confidence, and direction.',
            ),
            SizedBox(height: 20),
          ],
        ),
        'Lessons Learned': const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Thanks to my courses, teachers, and peers, I\'ve pushed myself and found my strengths, weaknesses, and limits. This last semester has truly tested my depth, fortitude, and learning. I left a number of projects unfinished, and even though I worked as hard as I did, I know I could have done more each and every time. I will take that lesson with me, and I\'ll try to remind myself in every moment of every day that I can always do more. Over these past two years, I learned a lot about failure, error, and missing the mark. I now view these experiences as forms of feedback. From unsuccessful applications to unfinished work, I\'ve learned how to construct meaning around these experiences, constructively grow from them, and continue to engage with them.',
            ),
            SizedBox(height: 20),
          ],
        ),
        'Portfolio Presentation': Column(
          children: [
            InkWell(
              onTap: () async {
                final Uri url = Uri.parse(
                  'https://www.youtube.com/watch?v=coWT7nFjNaM',
                );
                if (!await launchUrl(url)) {
                  throw Exception('Could not launch $url');
                }
              },
              child: Image.asset(
                'assets/images/squad/david/edtech/portfolio-presentation.png',
              ),
            ),
            const SizedBox(height: 10),
            ActionLink(
              text: 'EDET 793 Portfolio Presentation',
              navLink: 'https://www.youtube.com/watch?v=coWT7nFjNaM',
              onTap: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
        'Standard 1 - Content Knowledge': Align(
          alignment: Alignment.centerLeft,
          child: ActionLink(
            text:
                'Please see the old site for this content (https://holistic-gaming-dtfun.web.app/squad/david/edtech)',
            navLink: 'https://holistic-gaming-dtfun.web.app/squad/david/edtech',
            onTap: () {},
          ),
        ),
        'Standard 2 - Content Pedagogy': Align(
          alignment: Alignment.centerLeft,
          child: ActionLink(
            text:
                'Please see the old site for this content (https://holistic-gaming-dtfun.web.app/squad/david/edtech)',
            navLink: 'https://holistic-gaming-dtfun.web.app/squad/david/edtech',
            onTap: () {},
          ),
        ),
        'Standard 3 - Learning Environments': Align(
          alignment: Alignment.centerLeft,
          child: ActionLink(
            text:
                'Please see the old site for this content (https://holistic-gaming-dtfun.web.app/squad/david/edtech)',
            navLink: 'https://holistic-gaming-dtfun.web.app/squad/david/edtech',
            onTap: () {},
          ),
        ),
        'Standard 4 - Professional Knowledge & Skills': Align(
          alignment: Alignment.centerLeft,
          child: ActionLink(
            text:
                'Please see the old site for this content (https://holistic-gaming-dtfun.web.app/squad/david/edtech)',
            navLink: 'https://holistic-gaming-dtfun.web.app/squad/david/edtech',
            onTap: () {},
          ),
        ),
        'Standard 5 - Research': Align(
          alignment: Alignment.centerLeft,
          child: ActionLink(
            text:
                'Please see the old site for this content (https://holistic-gaming-dtfun.web.app/squad/david/edtech)',
            navLink: 'https://holistic-gaming-dtfun.web.app/squad/david/edtech',
            onTap: () {},
          ),
        ),
      },
      extraContent: const [
        SelectionArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text(
                'Class Website: http://corso793.wikispaces.com/home [RETIRED]',
              ),
              SizedBox(height: 5),
              Text(
                'Class Project: https://www.holisticgaming.com/ET793/ReviewActivity [RETIRED]',
              ),
            ],
          ),
        ),
      ],
    ),
    EdTechItem(
      title: 'FantasTech 2015 - Using Games in the Classroom & Life',
      content: [
        SelectionArea(
          child: Column(
            children: [
              InkWell(
                onTap: () async {
                  final Uri url = Uri.parse(
                    'https://www.youtube.com/watch?v=Brf_buWDLDE',
                  );
                  if (!await launchUrl(url)) {
                    throw Exception('Could not launch $url');
                  }
                },
                child: Image.asset(
                  'assets/images/squad/david/edtech/fantastech.png',
                ),
              ),
              const SizedBox(height: 10),
              ActionLink(
                text: 'FantasTech 2015 Pesentation',
                navLink: 'https://www.youtube.com/watch?v=Brf_buWDLDE',
                onTap: () {},
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ],
    ),
    EdTechItem(
      title: 'EDET 709 - Applications of Learning Principles',
      content: [
        Align(
          alignment: Alignment.centerLeft,
          child: ActionLink(
            text:
                'Class Paper: https://holisticgaming.com/pdf/CorsoResearchPaper.pdf',
            navLink: 'https://holisticgaming.com/#/pdf/CorsoResearchPaper.pdf',
            onTap: () {},
          ),
        ),
      ],
    ),
    EdTechItem(
      title: 'EDET 652 - Design and Evaluation of Games and Simulations',
      content: [
        Align(
          alignment: Alignment.centerLeft,
          child: ActionLink(
            text: 'Class projects: http://immunisgame.weebly.com/et652.html',
            navLink: 'http://immunisgame.weebly.com/et652.html',
            onTap: () {},
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerLeft,
          // child: Text(
          //   'Class project: https://www.holisticgaming.com/ET652/COTSHearthstone/cotsHearthstone.html [RETIRED]',
          // ),
          child: ActionLink(
            text:
                'Class project: https://www.holisticgaming.com/ET652/COTSHearthstone/cotsHearthstone.html',
            navLink:
                'https://holistic-gaming-dtfun.web.app/ET652/COTSHearthstone/cotsHearthstone.html',
            onTap: () {},
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerLeft,
          // child: Text(
          //   'Class project: https://www.holisticgaming.com/ET652/gamerInterview.html [RETIRED]',
          // ),
          child: ActionLink(
            text:
                'Class project: https://www.holisticgaming.com/ET652/gamerInterview.html',
            navLink:
                'https://holistic-gaming-dtfun.web.app/ET652/gamerInterview.html',
            onTap: () {},
          ),
        ),
      ],
    ),
    const EdTechItem(
      title: 'EDET 746 - Management of Media Resources',
      content: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Google Apps for Education: https://sites.google.com/site/plsteachmeapps/ [RETIRED]',
          ),
        ),
      ],
    ),
    const EdTechItem(
      title: 'EDET 650 - Internship in Educational Technology',
      content: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Class Website: https://corso650.wikispaces.com/David [RETIRED]',
          ),
        ),
      ],
    ),
    const EdTechItem(
      title:
          'EDET 755 - Design and Evaluation of Information Access and Delivery',
      content: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Class Website: https://corso755.wikispaces.com/home [RETIRED]',
          ),
        ),
      ],
    ),
    const EdTechItem(
      title: 'EDET 780 - Research Seminar in Educational Technology',
      content: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Class Website: https://corso780.wikispaces.com/Corso%27s+EDET+780+Wiki [RETIRED]',
          ),
        ),
      ],
    ),
    EdTechItem(
      title: 'EDET 735 - Technological Application for Diverse Populations',
      content: [
        Align(
          alignment: Alignment.centerLeft,
          child: ActionLink(
            text:
                'Class Projects: http://www.immunisgame.weebly.com/et735.html',
            navLink: 'http://www.immunisgame.weebly.com/et735.html',
            onTap: () {},
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerLeft,
          // child: Text(
          //   'Class Project: https://www.holisticgaming.com/ET735/ [RETIRED]',
          // ),
          child: ActionLink(
            text: 'Class Project: https://holistic-gaming-dtfun.web.app/ET735/',
            navLink: 'https://holistic-gaming-dtfun.web.app/ET735/',
            onTap: () {},
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerLeft,
          // child: Text(
          //   'Class Project: https://www.holisticgaming.com/ET735/newsletter.html [RETIRED]',
          // ),
          child: ActionLink(
            text:
                'Class Project: https://holistic-gaming-dtfun.web.app/ET735/newsletter.html',
            navLink:
                'https://holistic-gaming-dtfun.web.app/ET735/newsletter.html',
            onTap: () {},
          ),
        ),
        const SizedBox(height: 5),
        Align(
          alignment: Alignment.centerLeft,
          // child: Text(
          //   'Class Project: https://www.holisticgaming.com/ET735/overview.html [RETIRED]',
          // ),
          child: ActionLink(
            text:
                'Class Project: https://holistic-gaming-dtfun.web.app/ET735/overview.html',
            navLink:
                'https://holistic-gaming-dtfun.web.app/ET735/overview.html',
            onTap: () {},
          ),
        ),
      ],
    ),
    EdTechItem(
      title: 'EDET 703 - Design and Development Tools (II)',
      content: [
        Align(
          alignment: Alignment.centerLeft,
          // child: Text(
          //   'Class Website: https://www.holisticgaming.com/ET703/ [RETIRED]',
          // ),
          child: ActionLink(
            text: 'Class Website: https://holistic-gaming-dtfun.web.app/ET703/',
            navLink: 'https://holistic-gaming-dtfun.web.app/ET703/',
            onTap: () {},
          ),
        ),
      ],
    ),
    EdTechItem(
      title: 'EDET 722 - Instructional Design and Assessment',
      content: [
        Align(
          alignment: Alignment.centerLeft,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Class Links:',
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ActionLink(
                  text: 'CAST - UDL',
                  navLink:
                      'https://www.cast.org/impact/universal-design-for-learning-udl',
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ActionLink(
                  text: 'Final Report',
                  navLink: 'http://immunisgame.weebly.com/final-report.html',
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ActionLink(
                  text: 'Analysis',
                  navLink: 'http://immunisgame.weebly.com/analysis.html',
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ActionLink(
                  text: 'Design',
                  navLink: 'http://immunisgame.weebly.com/design.html',
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ActionLink(
                  text: 'Develop',
                  navLink: 'http://immunisgame.weebly.com/develop.html',
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ActionLink(
                  text: 'Implementation',
                  navLink: 'http://immunisgame.weebly.com/implementation.html',
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ActionLink(
                  text: 'Evaluation',
                  navLink: 'http://immunisgame.weebly.com/evaluation.html',
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ActionLink(
                  text: 'Survey',
                  navLink: 'http://immunisgame.weebly.com/survey.html',
                  onTap: () {},
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: ActionLink(
                  text: 'Time Log',
                  navLink: 'http://immunisgame.weebly.com/time-log.html',
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    ),
    const EdTechItem(
      title: 'EDET 603 - Design and Development Tools (I)',
      content: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Class Website: http://corso603.wikispaces.com/home [RETIRED]',
          ),
        ),
      ],
    ),
  ];
}
