import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/models/models.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class DavidEdTechScreen extends StatefulWidget {
  const DavidEdTechScreen({super.key});

  @override
  State<DavidEdTechScreen> createState() => _DavidEdTechScreenState();
}

class _DavidEdTechScreenState extends State<DavidEdTechScreen> {
  List<bool> isTileExpanded = [];
  List<int> tileOrder = [];
  List<ExpansionTileController> controllers = [];
  List<EdTechItem> edTechCollection = EdTechItem.edTechItemCollection;
  Map<int, List<bool>> isSubTileExpanded = {};

  @override
  void initState() {
    super.initState();

    setupCollection();
  }

  void setupCollection() {
    if (controllers.isNotEmpty) {
      controllers.clear();
    }
    if (isTileExpanded.isNotEmpty) {
      isTileExpanded.clear();
    }
    if (isSubTileExpanded.isNotEmpty) {
      isSubTileExpanded.clear();
    }

    for (int i = 0; i < edTechCollection.length; i++) {
      setState(() {
        controllers.add(ExpansionTileController());
        isTileExpanded.add(false);
        if (edTechCollection[i].subsetLists != null) {
          isSubTileExpanded.addAll(<int, List<bool>>{
            i: List<bool>.generate(
              edTechCollection[i].subsetLists!.length,
              (index) => false,
            ),
          });
        }
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
    final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      screen: 'David - EdTech',
      bottAppBar: isTileExpanded.any((tile) => tile)
          ? AccordionCloseBar(
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
            )
          : const SizedBox(),
      child: Column(
        children: [
          SquadSubAppBar(
            width: width,
          ),
          const Padding(
            padding: EdgeInsets.all(25),
            child: Text(
              'Below is a collection of websites, projects, and media that I created for my Educational Technology program at the University of South Carolina.',
            ),
          ),
          EdTechList(
            edTechCollection: edTechCollection,
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
          const SizedBox(height: 50),
        ],
      ),
    );
  }
}
