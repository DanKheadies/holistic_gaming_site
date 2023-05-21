import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> homePics = [
    'assets/images/home/acnh1.jpg',
    'assets/images/home/acnh2.jpg',
    'assets/images/home/acnh3.jpg',
    'assets/images/home/atomic.jpg',
    'assets/images/home/botw1.jpg',
    'assets/images/home/botw2.jpg',
    'assets/images/home/broforce.jpg',
    'assets/images/home/cadHyrule.jpg',
    'assets/images/home/celeste1.jpg',
    'assets/images/home/celeste2.jpg',
    'assets/images/home/childrenMorta.jpg',
    'assets/images/home/civ.jpg',
    'assets/images/home/crossing1.jpg',
    'assets/images/home/crossing2.jpg',
    'assets/images/home/deadCells.jpg',
    'assets/images/home/diablo.jpg',
    'assets/images/home/dQ.jpg',
  ];

  @override
  void initState() {
    super.initState();
    homePics.shuffle();
  }

  @override
  Widget build(BuildContext context) {
    // final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Holistic Gaming'),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 5),
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
                Container(
                  padding: EdgeInsets.symmetric(
                    // horizontal: width / 4,
                    horizontal: width / 15,
                    vertical: width / 25,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.white,
                      width: 3,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10),
                    ),
                    color: Colors.black.withAlpha(155),
                  ),
                  child: Text(
                    'You\'re smarter than you think.\n\n',
                    style: TextStyle(
                      fontSize: (width / 20).floorToDouble(),
                      // fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  color: Colors.green,
                  // width: width / 25,
                  // height: width / 25,
                  margin: EdgeInsets.only(
                    top: width / 25,
                  ),
                  child: Text(
                    'So keep playing..',
                    style: TextStyle(
                      fontSize: (width / 25).floorToDouble(),
                    ),
                  ),
                ),
              ],
            ),
            // CarouselSlider(
            //   options: CarouselOptions(
            //     autoPlay: true,
            //     autoPlayInterval: const Duration(seconds: 5),
            //     autoPlayAnimationDuration: const Duration(milliseconds: 800),
            //     autoPlayCurve: Curves.fastOutSlowIn,
            //     enableInfiniteScroll: true,
            //     initialPage: Random().nextInt(homePics.length),
            //     scrollDirection: Axis.vertical,
            //     scrollPhysics: const NeverScrollableScrollPhysics(),
            //     viewportFraction: 1,
            //   ),
            //   // carouselController: ,
            //   items: homePics
            //       .map(
            //         (pic) => Container(
            //           margin: const EdgeInsets.all(15.0),
            //           child: ClipRRect(
            //             borderRadius: const BorderRadius.all(
            //               Radius.circular(5.0),
            //             ),
            //             child: Stack(
            //               alignment: Alignment.center,
            //               children: <Widget>[
            //                 Image.network(
            //                   pic,
            //                   fit: BoxFit.cover,
            //                   // width: 1000.0,
            //                   width: width,
            //                 ),

            //                 Container(
            //                   padding: EdgeInsets.symmetric(
            //                     // horizontal: width / 4,
            //                     horizontal: width / 15,
            //                     vertical: width / 25,
            //                   ),
            //                   // width: width,
            //                   // height: 100,
            //                   color: Colors.red.withAlpha(155),
            //                   child: Text(
            //                     'You\'re smarter than you think.\n\n',
            //                     style: TextStyle(
            //                       fontSize: (width / 20).floorToDouble(),
            //                       // fontSize: 18,
            //                       color: Colors.blue,
            //                     ),
            //                   ),
            //                 ),
            //                 Container(
            //                   color: Colors.green,
            //                   // width: width / 25,
            //                   // height: width / 25,
            //                   margin: EdgeInsets.only(
            //                     top: width / 25,
            //                   ),
            //                   child: Text(
            //                     'So keep playing..',
            //                     style: TextStyle(
            //                       fontSize: (width / 25).floorToDouble(),
            //                     ),
            //                   ),
            //                 ),
            //                 // Positioned(
            //                 //   child: Column(
            //                 //     mainAxisAlignment: MainAxisAlignment.center,
            //                 //     children: [
            //                 //       Container(
            //                 //         padding: EdgeInsets.symmetric(
            //                 //           // horizontal: width / 4,
            //                 //           horizontal: width / 15,
            //                 //         ),
            //                 //         // width: width,
            //                 //         // height: 100,
            //                 //         color: Colors.red.withAlpha(155),
            //                 //         child: Text(
            //                 //           'You\'re smarter than you think.',
            //                 //           style: TextStyle(
            //                 //             fontSize: (width / 20).floorToDouble(),
            //                 //             // fontSize: 18,
            //                 //             color: Colors.blue,
            //                 //           ),
            //                 //         ),
            //                 //       ),
            //                 //     ],
            //                 //   ),
            //                 // ),
            //               ],
            //             ),
            //           ),
            //         ),
            //       )
            //       .toList(),
            // ),
            Container(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height,
              color: Colors.red,
            ),
          ],
        ),
      ),
      // floatingActionButton: Row(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   children: [
      //     FloatingActionButton(
      //       heroTag: "nav",
      //       onPressed: () => context.go('/home/test'),
      //       tooltip: 'nav',
      //       child: const Icon(Icons.arrow_forward),
      //     ),
      //   ],
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
