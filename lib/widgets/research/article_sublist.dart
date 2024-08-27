import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/models/models.dart';

class ArticleSublist extends StatefulWidget {
  final int index;
  final List<ResearchArticle> articles;
  final Map<int, List<bool>> isSubTileExpanded;

  const ArticleSublist({
    super.key,
    required this.index,
    required this.articles,
    required this.isSubTileExpanded,
  });

  @override
  State<ArticleSublist> createState() => _ArticleSublistState();
}

class _ArticleSublistState extends State<ArticleSublist> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.articles[widget.index].subsetLists!.length,
        itemBuilder: (context, mapIndex) {
          String mapTitle = widget.articles[widget.index].subsetLists!.keys
              .elementAt(mapIndex);
          Widget mapWidget =
              widget.articles[widget.index].subsetLists![mapTitle]!;

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
                        : Theme.of(context).scaffoldBackgroundColor,
                    fontSize: 17,
                    fontWeight: widget.isSubTileExpanded[widget.index]!
                            .elementAt(mapIndex)
                        ? FontWeight.bold
                        : FontWeight.normal,
                  ),
                ),
              ),
              iconColor: Theme.of(context).colorScheme.surface,
              collapsedIconColor: Theme.of(context).scaffoldBackgroundColor,
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              // controller: widget.controllers[index],
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
