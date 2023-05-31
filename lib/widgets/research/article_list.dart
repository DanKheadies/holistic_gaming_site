import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/models/models.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class ArticleList extends StatefulWidget {
  final List<bool> isTileExpanded;
  final List<int> tileOrder;
  final List<ExpansionTileController> controllers;
  final List<ResearchArticle> articles;
  final Function(bool, int) handleToggle;

  const ArticleList({
    super.key,
    required this.isTileExpanded,
    required this.tileOrder,
    required this.controllers,
    required this.articles,
    required this.handleToggle,
  });

  @override
  State<ArticleList> createState() => _ArticleListState();
}

class _ArticleListState extends State<ArticleList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: ListView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: widget.articles.length,
        itemBuilder: (context, index) {
          return Card(
            color: Theme.of(context).colorScheme.surface,
            child: ExpansionTile(
              title: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: Text(
                  widget.articles[index].shortTitle,
                  style: TextStyle(
                    color: widget.isTileExpanded[index]
                        ? Theme.of(context).colorScheme.surface
                        : Theme.of(context).colorScheme.background,
                    fontSize: 17,
                    fontWeight: widget.isTileExpanded[index]
                        ? FontWeight.bold
                        : FontWeight.normal,
                    // height: 1.25,
                  ),
                ),
              ),
              // tilePadding: const EdgeInsets.all(15),
              iconColor: Theme.of(context).colorScheme.surface,
              collapsedIconColor: Theme.of(context).colorScheme.background,
              backgroundColor: Theme.of(context).colorScheme.background,
              controller: widget.controllers[index],
              onExpansionChanged: (value) => widget.handleToggle(value, index),
              children: [
                SelectionArea(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Posted: ${widget.articles[index].postedDate}'),
                        const SizedBox(height: 15),
                        ActionLink(
                          text: widget.articles[index].realTitle,
                          navLink: widget.articles[index].articleLink,
                          color: Theme.of(context).colorScheme.surface,
                          fontSize:
                              Theme.of(context).textTheme.bodyMedium!.fontSize,
                          onTap: () {},
                        ),
                        Text(widget.articles[index].authors),
                        Text(
                            'Published: ${widget.articles[index].publishedDate}'),
                        const SizedBox(height: 15),
                        const Text(
                          'tl;dr',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(widget.articles[index].tldr),
                        const SizedBox(height: 15),
                        const Text(
                          'eli5',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(widget.articles[index].eli5),
                        const SizedBox(height: 15),
                        const Text(
                          'elevator sum',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        widget.articles[index].elevatorSum,
                        const SizedBox(height: 15),
                        const Text(
                          '3 min dissertation',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 5),
                        widget.articles[index].dissertation,
                        const SizedBox(height: 15),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            const Text(
                              'Thanks for your time! Feel free to ',
                            ),
                            ActionLink(
                              text: 'share this review',
                              // TODO: update this
                              navLink:
                                  'http://localhost:63132/#/research/${widget.articles[index].refTitle}',
                              color: Theme.of(context).colorScheme.surface,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .fontSize,
                              onTap: () {},
                            ),
                            const Text(
                              '.',
                            ),
                          ],
                        ),
                      ],
                    ),
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
