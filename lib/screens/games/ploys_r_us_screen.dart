import 'dart:async';

import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/models/models.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class PloysRUsScreen extends StatefulWidget {
  const PloysRUsScreen({super.key});

  @override
  State<PloysRUsScreen> createState() => _PloysRUsScreenState();
}

class _PloysRUsScreenState extends State<PloysRUsScreen> {
  final Color red = const Color(0xFFed145b);
  final Color orange = const Color(0xFFf58220);
  final Color yellow = const Color(0xFFf5e620);
  final Color green = const Color(0xFF72bf44);
  final Color blue = const Color(0xFF0061af);

  ScrollController scroller = ScrollController();

  Alignment begin = Alignment.bottomLeft;
  Alignment end = Alignment.topRight;
  int index = 0;
  List<Alignment> alignmentList = [
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft,
  ];

  List<bool> isTileExpanded = [];
  List<int> tileOrder = [];
  List<ExpansionTileController> controllers = [];
  List<PloysGame> ployGames = PloysGame.ploysGameCollection;
  Map<int, List<bool>> isSubTileExpanded = {};

  late Color bottomColor;
  late Color topColor;
  late List<Color> colorList;

  @override
  void initState() {
    super.initState();

    bottomColor = red;
    topColor = yellow;
    colorList = [
      red,
      orange,
      yellow,
      green,
      blue,
    ];

    Timer(
      const Duration(milliseconds: 300),
      () => setState(() {
        bottomColor = blue;
      }),
    );

    setupPloys();
  }

  void setupPloys() {
    ployGames.sort(
      (a, b) => a.title.compareTo(b.title),
    );

    if (controllers.isNotEmpty) {
      controllers.clear();
    }
    if (isTileExpanded.isNotEmpty) {
      isTileExpanded.clear();
    }
    if (isSubTileExpanded.isNotEmpty) {
      isSubTileExpanded.clear();
    }

    for (int i = 0; i < ployGames.length; i++) {
      setState(() {
        controllers.add(ExpansionTileController());
        isTileExpanded.add(false);
      });
    }
  }

  void closeAllTiles() {
    setState(() {
      isTileExpanded.map((tile) => tile == false);
      tileOrder.clear();
    });

    for (var cont in controllers) {
      cont.collapse();
    }
  }

  @override
  Widget build(BuildContext context) {
    return SiteWrapper(
      bottAppBar: AccordionCloseBar(
        isTileExpanded: isTileExpanded,
        tileOrder: tileOrder,
        controllers: controllers,
        handleCloseAllTiles: closeAllTiles,
        handleCloseLastTile: () {
          setState(() {
            isTileExpanded[tileOrder.last] = false;
          });
          controllers[tileOrder.last].collapse();
        },
      ),
      fullscreenBackground: SizedBox.expand(
        child: FittedBox(
          fit: BoxFit.cover,
          child: AnimatedContainer(
            duration: const Duration(seconds: 2),
            onEnd: () {
              setState(() {
                index = index + 1;

                // animate the color
                bottomColor = colorList[index % colorList.length];
                topColor = colorList[(index + 1) % colorList.length];

                // animate the alignment
                begin = alignmentList[index % alignmentList.length];
                end = alignmentList[(index + 2) % alignmentList.length];
              });
            },
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: begin,
                end: end,
                colors: [
                  bottomColor,
                  topColor,
                ],
              ),
            ),
            height: 1,
            width: 1,
          ),
        ),
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(35),
            child: Column(
              children: [
                Responsive.isMobile(context) || Responsive.isTablet(context)
                    ? Image.asset('assets/images/games/ploys-r-us-hori.png')
                    : const SizedBox(),
                SizedBox(
                  height: Responsive.isMobile(context) ||
                          Responsive.isTablet(context)
                      ? 25
                      : 0,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Responsive.isMobile(context) || Responsive.isTablet(context)
                        ? const SizedBox()
                        : Expanded(
                            child: Image.asset(
                              'assets/images/games/ploys-r-us.png',
                            ),
                          ),
                    Expanded(
                      child: PloysList(
                        ployGames: ployGames,
                        controllers: controllers,
                        isTileExpanded: isTileExpanded,
                        tileOrder: tileOrder,
                        isSubTileExpanded: isSubTileExpanded,
                        handleToggle: (value, index) {
                          setState(() {
                            isTileExpanded[index] = value;
                            if (value) {
                              tileOrder.add(index);
                            } else {
                              tileOrder.removeWhere((value) => value == index);
                            }
                          });
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
