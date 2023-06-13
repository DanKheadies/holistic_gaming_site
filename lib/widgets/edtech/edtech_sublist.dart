import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/models/models.dart';

class EdTechSublist extends StatefulWidget {
  final int index;
  final List<EdTechItem> items;
  final Map<int, List<bool>> isSubTileExpanded;

  const EdTechSublist({
    super.key,
    required this.index,
    required this.items,
    required this.isSubTileExpanded,
  });

  @override
  State<EdTechSublist> createState() => _EdTechSublistState();
}

class _EdTechSublistState extends State<EdTechSublist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.items[widget.index].subsetLists!.length,
        itemBuilder: (context, mapIndex) {
          String mapTitle =
              widget.items[widget.index].subsetLists!.keys.elementAt(mapIndex);
          Widget mapWidget = widget.items[widget.index].subsetLists![mapTitle]!;

          return Card(
            color: Theme.of(context).colorScheme.surface,
            child: ExpansionTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  mapTitle,
                  style: TextStyle(
                    color: widget.isSubTileExpanded[widget.index]!
                            .elementAt(mapIndex)
                        ? Theme.of(context).colorScheme.surface
                        : Theme.of(context).colorScheme.background,
                    fontSize: 17,
                    fontWeight: widget.isSubTileExpanded[widget.index]!
                            .elementAt(mapIndex)
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
              iconColor: Theme.of(context).colorScheme.surface,
              collapsedIconColor: Theme.of(context).colorScheme.background,
              backgroundColor: Theme.of(context).colorScheme.background,
              onExpansionChanged: (value) {
                List<bool> tempList = widget.isSubTileExpanded[widget.index]!;
                tempList[mapIndex] = value;
                setState(() {
                  widget.isSubTileExpanded[widget.index] = tempList;
                });
              },
              children: [
                SelectionArea(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: mapWidget,
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
