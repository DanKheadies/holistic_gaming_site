import 'dart:async';
import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/data/data.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class Jumbotron extends StatefulWidget {
  const Jumbotron({super.key});

  @override
  State<Jumbotron> createState() => _JumbotronState();
}

class _JumbotronState extends State<Jumbotron> {
  bool isHover = false;
  bool showText1 = false;
  bool showText2 = false;
  double margin = 15;
  String soKeepPlaying =
      'All games—board games, sports games, card games, dice games, video games, etc—use and train our thinking abilities. These mental abilities are activated when we read directions, learn rules, move our bodies, organize units, spend resources, solve problems, and throughout all aspects of a game. Cognition is the ability to think, and cognitive abilities are the mental abilities we use to think. How we perceive an environment, what we attend to and focus on, what we remember, how we communicate, how we make decisions, solve problems, and reason all use and train our cognitive abilities. In a physical workout, we train our muscles to get bigger and stronger by using them. Likewise, in a mental workout, we train our mental abilities to get faster and smarter by using them. Gamers are atheletes, and like most of our olympic and sport athletes, we train every day. \n\nWhether it\'s a well structured, mental regiment or a naturally emerging jungle gym, games train our cognitive abilities: perception, attention, memory, communication, problem solving, decision making, and reasoning skills. A number of real-world activities use and train cognitive abilities too, such as conversating, reading, cooking, driving, dancing, working, and learning; however, gaming is an intense, flavorful form of learning that people have a higher affinity towards over most real-world activities. Games attract people. Games engage people. Games challenge people. Games motivate people. Games use and train our cognitive abilities, and we grow smarter every time we play a game. The more mindful we are of this mental training, the more we can control our mental growth and well-being. \n\nYou\'re smarter than you think. So keep playing.';

  late Timer text1In;
  late Timer text1Out;
  late Timer text2In;
  late Timer text2Out;

  @override
  void initState() {
    super.initState();
    homePics.shuffle();

    // Initialize to avoid errors
    text1In = Timer(Duration.zero, () {});
    text1Out = Timer(Duration.zero, () {});
    text2In = Timer(Duration.zero, () {});
    text2Out = Timer(Duration.zero, () {});

    // Trigger first time run, then setup for repeating
    text1In = Timer(
      const Duration(milliseconds: 1000),
      () {
        setState(() {
          showText1 = true;
        });
        text1Out = Timer(
          const Duration(milliseconds: 4000),
          () => setState(() {
            showText1 = false;
          }),
        );

        text1In = Timer.periodic(
          const Duration(milliseconds: 10000),
          (value) {
            setState(() {
              showText1 = true;
            });
            text1Out = Timer(
              const Duration(milliseconds: 4000),
              () => setState(() {
                showText1 = false;
              }),
            );
          },
        );
      },
    );

    text2In = Timer(
      const Duration(milliseconds: 6000),
      () {
        setState(() {
          showText2 = true;
        });
        text2Out = Timer(
          const Duration(milliseconds: 3000),
          () => setState(() {
            showText2 = false;
          }),
        );

        text2In = Timer.periodic(
          const Duration(milliseconds: 10000),
          (value) {
            setState(() {
              showText2 = true;
            });
            text2Out = Timer(
              const Duration(milliseconds: 3000),
              () => setState(() {
                showText2 = false;
              }),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    text1In.cancel();
    text1Out.cancel();
    text2In.cancel();
    text2Out.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.center,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 10),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            initialPage: Random().nextInt(homePics.length),
            scrollDirection: Axis.vertical,
            scrollPhysics: const NeverScrollableScrollPhysics(),
            viewportFraction: 1,
          ),
          items: homePics
              .map(
                (pic) => Container(
                  margin: EdgeInsets.all(margin),
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(
                      Radius.circular(margin),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Image.network(
                          pic,
                          fit: BoxFit.cover,
                          width: width,
                        ),
                      ],
                    ),
                  ),
                ),
              )
              .toList(),
        ),
        InkWell(
          onTap: () => keepPlaying(context, soKeepPlaying),
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: Container(
            width: width - (margin * 2),
            height: (width * 9) / 16 - (margin * 2),
            decoration: BoxDecoration(
              color: isHover
                  ? Theme.of(context).colorScheme.surface.withAlpha(100)
                  : Colors.transparent,
              borderRadius: BorderRadius.all(
                Radius.circular(margin),
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                AnimatedOpacity(
                  opacity: showText1 ? 1 : 0,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width / 15,
                      vertical: width / 25,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: width / 200,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(margin),
                      ),
                      color: isHover
                          ? Colors.black.withAlpha(200)
                          : Colors.black.withAlpha(155),
                    ),
                    child: Text(
                      'You\'re smarter than you think.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: (width / 20).floorToDouble(),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                AnimatedOpacity(
                  opacity: showText2 ? 1 : 0,
                  duration: const Duration(milliseconds: 500),
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: width / 15,
                      vertical: width / 25,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: width / 200,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(margin),
                      ),
                      color: isHover
                          ? Colors.black.withAlpha(200)
                          : Colors.black.withAlpha(155),
                    ),
                    child: Text(
                      'So keep playing.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: (width / 20).floorToDouble(),
                        // fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
