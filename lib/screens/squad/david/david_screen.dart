import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class DavidScreen extends StatelessWidget {
  const DavidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      child: Column(
        children: [
          SquadSubAppBar(
            width: width,
          ),
          const DavidAlphaRow(),
          const InformationRow(
            title: 'Professional Goals',
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'I want to work with a diverse team of researchers, designers, developers, educators, and gamers.',
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'I want to research, design, and develop holistic games.',
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    'I want to work within each group and between groups.',
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'I want to research academic material, educational theories, technology tools, and business trends.',
                ),
                SizedBox(height: 15),
                Text(
                  'I want to design software, educational games, and instructional material.',
                ),
                SizedBox(height: 15),
                Text(
                  'I want to develop websites, training modules, and games.',
                ),
                SizedBox(height: 15),
                Text(
                  'I want to manage multiple projects, time, and other resources.',
                ),
              ],
            ),
          ),
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}

class DavidAlphaRow extends StatelessWidget {
  const DavidAlphaRow({super.key});

  @override
  Widget build(BuildContext context) {
    InformationBlock buildDavidCorso() {
      return InformationBlock(
        title: 'David W Corso',
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Text(
            'I\'m 6 parts biologist, 3 parts psychologist, 1 part artist, 4 parts programmer, 5 parts educator, 7 parts researcher, 2 parts neuroscientist, and 10 parts gamer. During my sophomore year of college, I realized how games and game research could help people. My academic backgrounds in biology, psychology, biomedical engineering, and educational technology have been productive stepping stones towards that future. This portfolio is a collection of ideas and artifacts that showcase my skills, knowledge, and future plans. \n\nI work a lot. I play a lot. I read a lot. And I do a lot.',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
      );
    }

    Container buildImage() {
      return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 25,
          horizontal: 20,
        ),
        child: Image.asset(
          'assets/images/squad/david/david2.jpg',
          fit: BoxFit.scaleDown,
          alignment: Alignment.topCenter,
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
                child: buildDavidCorso(),
              ),
              Flexible(
                flex: Responsive.isDesktop(context) ? 7 : 5,
                child: buildImage(),
              ),
              const Flexible(
                flex: 1,
                child: SizedBox(),
              ),
            ],
          )
        : Column(
            children: [
              buildDavidCorso(),
              buildImage(),
            ],
          );
  }
}
