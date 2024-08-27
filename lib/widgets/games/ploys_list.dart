import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/models/models.dart';
// import 'package:holistic_gaming_site/widgets/widgets.dart';

class PloysList extends StatefulWidget {
  final List<bool> isTileExpanded;
  final List<int> tileOrder;
  final List<ExpansionTileController> controllers;
  final List<PloysGame> ployGames;
  final Map<int, List<bool>> isSubTileExpanded;
  final Function(bool, int) handleToggle;

  const PloysList({
    super.key,
    required this.isTileExpanded,
    required this.tileOrder,
    required this.controllers,
    required this.ployGames,
    required this.isSubTileExpanded,
    required this.handleToggle,
  });

  @override
  State<PloysList> createState() => _PloysListState();
}

class _PloysListState extends State<PloysList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ListView.builder(
        shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.ployGames.length,
        itemBuilder: (context, index) {
          return Card(
            color: Theme.of(context).colorScheme.surface,
            clipBehavior: Clip.antiAlias,
            child: ExpansionTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  widget.ployGames[index].title,
                  style: TextStyle(
                    color: widget.isTileExpanded[index]
                        ? Theme.of(context).colorScheme.surface
                        : Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 17,
                    fontWeight: widget.isTileExpanded[index]
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
              iconColor: Theme.of(context).colorScheme.surface,
              collapsedIconColor: Theme.of(context).scaffoldBackgroundColor,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              controller: widget.controllers[index],
              onExpansionChanged: (value) => widget.handleToggle(value, index),
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...widget.ployGames[index].content,
                      // const SizedBox(height: 15),
                      // widget.edTechCollection[index].subsetLists != null
                      //     ? EdTechSublist(
                      //         index: index,
                      //         items: widget.edTechCollection,
                      //         isSubTileExpanded: widget.isSubTileExpanded,
                      //       )
                      //     : const SizedBox(),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
