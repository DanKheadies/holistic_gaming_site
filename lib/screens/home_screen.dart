import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/data/data.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isHover = false;
  String soKeepPlaying =
      'All games—board games, sports games, card games, dice games, video games, etc—use and train our thinking abilities. These mental abilities are activated when we read directions, learn rules, move our bodies, organize units, spend resources, solve problems, and throughout all aspects of a game. Cognition is the ability to think, and cognitive abilities are the mental abilities we use to think. How we perceive an environment, what we attend to and focus on, what we remember, how we communicate, how we make decisions, solve problems, and reason all use and train our cognitive abilities. In a physical workout, we train our muscles to get bigger and stronger by using them. Likewise, in a mental workout, we train our mental abilities to get faster and smarter by using them. Gamers are atheletes, and like most of our olympic and sport athletes, we train every day. \n\nWhether it\'s a well structured, mental regiment or a naturally emerging jungle gym, games train our cognitive abilities: perception, attention, memory, communication, problem solving, decision making, and reasoning skills. A number of real-world activities use and train cognitive abilities too, such as conversating, reading, cooking, driving, dancing, working, and learning; however, gaming is an intense, flavorful form of learning that people have a higher affinity towards over most real-world activities. Games attract people. Games engage people. Games challenge people. Games motivate people. Games use and train our cognitive abilities, and we grow smarter every time we play a game. The more mindful we are of this mental training, the more we can control our mental growth and well-being. \n\nYou\'re smarter than you think. So keep playing.';

  @override
  void initState() {
    super.initState();
    homePics.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 7),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
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
                          margin: const EdgeInsets.all(15),
                          child: ClipRRect(
                            borderRadius: const BorderRadius.all(
                              Radius.circular(5),
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
                    padding: EdgeInsets.symmetric(
                      horizontal: width / 15,
                      vertical: width / 25,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        // color: Theme.of(context).primaryColor,
                        width: width / 200,
                      ),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(10),
                      ),
                      color: isHover
                          ? Colors.black.withAlpha(200)
                          : Colors.black.withAlpha(155),
                    ),
                    child: Text(
                      'You\'re smarter than you think.\nSo keep playing.',
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
            Container(
              width: width / 2,
              height: height,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
