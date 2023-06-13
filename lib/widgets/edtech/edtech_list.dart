import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/models/models.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class EdTechList extends StatefulWidget {
  final List<bool> isTileExpanded;
  final List<int> tileOrder;
  final List<ExpansionTileController> controllers;
  final List<EdTechItem> edTechCollection;
  final Map<int, List<bool>> isSubTileExpanded;
  final Function(bool, int) handleToggle;

  const EdTechList({
    super.key,
    required this.isTileExpanded,
    required this.tileOrder,
    required this.controllers,
    required this.edTechCollection,
    required this.isSubTileExpanded,
    required this.handleToggle,
  });

  @override
  State<EdTechList> createState() => _EdTechListState();
}

class _EdTechListState extends State<EdTechList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.edTechCollection.length,
        itemBuilder: (context, index) {
          return Card(
            color: Theme.of(context).colorScheme.surface,
            child: ExpansionTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  widget.edTechCollection[index].title,
                  style: TextStyle(
                    color: widget.isTileExpanded[index]
                        ? Theme.of(context).colorScheme.surface
                        : Theme.of(context).colorScheme.background,
                    fontSize: 17,
                    fontWeight: widget.isTileExpanded[index]
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
              iconColor: Theme.of(context).colorScheme.surface,
              collapsedIconColor: Theme.of(context).colorScheme.background,
              backgroundColor: Theme.of(context).colorScheme.background,
              controller: widget.controllers[index],
              onExpansionChanged: (value) => widget.handleToggle(value, index),
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ...widget.edTechCollection[index].content,
                      const SizedBox(height: 15),
                      widget.edTechCollection[index].subsetLists != null
                          ? EdTechSublist(
                              index: index,
                              items: widget.edTechCollection,
                              isSubTileExpanded: widget.isSubTileExpanded,
                            )
                          : const SizedBox(),
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
