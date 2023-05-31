import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:holistic_gaming_site/models/models.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class ResearchScreen extends StatefulWidget {
  final String? article;

  const ResearchScreen({
    super.key,
    this.article,
  });

  @override
  State<ResearchScreen> createState() => _ResearchScreenState();
}

class _ResearchScreenState extends State<ResearchScreen> {
  List<bool> isTileExpanded = [];
  List<int> tileOrder = [];
  List<ExpansionTileController> controllers = [];
  List<ResearchArticle> articles = ResearchArticle.articles;
  // ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    // TODO
    articles.sort(
      (a, b) => a.refTitle.compareTo(b.refTitle),
    );

    for (int i = 0; i < articles.length; i++) {
      setState(() {
        controllers.add(ExpansionTileController());
        isTileExpanded.add(false);
      });
    }

    // if (widget.article != null) {
    //   int artNum = int.parse(widget.article!);
    //   isTileExpanded[artNum] = true;
    //   tileOrder.add(artNum);
    //   Timer(
    //     Duration.zero,
    //     () => controllers[artNum].expand(),
    //   );
    // }
    if (widget.article != null) {
      int artNum = -1;
      for (int i = 0; i < articles.length; i++) {
        if (articles[i].refTitle == widget.article) {
          artNum = i;
        }
      }
      if (artNum >= 0) {
        isTileExpanded[artNum] = true;
        tileOrder.add(artNum);
        Timer(
          Duration.zero,
          () => controllers[artNum].expand(),
        );
        // TODO
        // scrollController.animateTo(
        //   100,
        //   duration: const Duration(seconds: 1),
        //   curve: Curves.fastOutSlowIn,
        // );
      }
    }
  }

  void toSite(String site) async {
    final Uri url = Uri.parse(site);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return SiteWrapper(
      bottAppBar: AccordionCloseBar(
        isTileExpanded: isTileExpanded,
        tileOrder: tileOrder,
        controllers: controllers,
      ),
      child: Column(
        children: [
          const QuotesHeader(),
          Padding(
            padding: const EdgeInsets.all(25),
            child: ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              // controller: scrollController,
              itemCount: articles.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Theme.of(context).colorScheme.surface,
                  child: ExpansionTile(
                    title: Text(
                      articles[index].shortTitle,
                      style: TextStyle(
                        color: isTileExpanded[index]
                            ? Theme.of(context).colorScheme.surface
                            : Theme.of(context).colorScheme.background,
                        fontSize: 17,
                        fontWeight: isTileExpanded[index]
                            ? FontWeight.bold
                            : FontWeight.normal,
                      ),
                    ),
                    iconColor: Theme.of(context).colorScheme.surface,
                    collapsedIconColor:
                        Theme.of(context).colorScheme.background,
                    backgroundColor: Theme.of(context).colorScheme.background,
                    controller: controllers[index],
                    onExpansionChanged: (value) {
                      setState(() {
                        isTileExpanded[index] = value;
                        if (value) {
                          tileOrder.add(index);
                        } else {
                          tileOrder.removeWhere((value) => value == index);
                        }
                      });
                    },
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Posted: ${articles[index].postedDate}'),
                            const SizedBox(height: 15),
                            ActionLink(
                              text: articles[index].realTitle,
                              navLink: articles[index].articleLink,
                              color: Theme.of(context).colorScheme.surface,
                              fontSize: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .fontSize,
                              onTap: () {},
                            ),
                            Text(articles[index].authors),
                            Text('Published: ${articles[index].publishedDate}'),
                            const SizedBox(height: 15),
                            const Text(
                              'tl;dr',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(articles[index].tldr),
                            const SizedBox(height: 15),
                            const Text(
                              'eli5',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            Text(articles[index].eli5),
                            const SizedBox(height: 15),
                            const Text(
                              'elevator sum',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            articles[index].elevatorSum,
                            const SizedBox(height: 15),
                            const Text(
                              '3 min dissertation',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 5),
                            articles[index].dissertation,
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
                                  // navLink: articles[index].articleLink,
                                  navLink:
                                      'http://localhost:63132/#/research/${articles[index].refTitle}',
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
                    ],
                  ),
                );
              },
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.all(25),
          //   child: ExpansionPanelList(
          //     expansionCallback: (panelIndex, isExpanded) {
          //       print('index: $panelIndex');
          //       setState(() {
          //         expanded[panelIndex] = !isExpanded;
          //       });
          //     },
          //     animationDuration: const Duration(seconds: 1),
          //     children: [
          //       ExpansionPanel(
          //         headerBuilder: (context, isOpen) {
          //           print('1 isOpen: $isOpen');
          //           return Padding(
          //             padding: const EdgeInsets.all(15),
          //             child: Text(
          //               'Derp 1',
          //               style: TextStyle(
          //                 color: Theme.of(context).colorScheme.background,
          //               ),
          //             ),
          //           );
          //         },
          //         backgroundColor: Theme.of(context).colorScheme.surface,
          //         body: Container(
          //           padding: const EdgeInsets.all(20),
          //           color: Colors.redAccent[100],
          //           width: double.infinity,
          //           child: const Text("hello worlds"),
          //         ),
          //         isExpanded: expanded[0],
          //         canTapOnHeader: true,
          //       ),
          //       ExpansionPanel(
          //         headerBuilder: (context, isOpen) {
          //           print('2 isOpen: $isOpen');
          //           return const Padding(
          //             padding: EdgeInsets.all(15),
          //             child: Text("Derp 2"),
          //           );
          //         },
          //         body: Container(
          //           padding: const EdgeInsets.all(20),
          //           color: Colors.redAccent[100],
          //           width: double.infinity,
          //           child: const Text("hello worlds"),
          //         ),
          //         isExpanded: expanded[1],
          //         canTapOnHeader: true,
          //       ),
          //     ],
          //   ),
          //   // ListView(),
          // ),
          // ExpansionTile(),
          // ExpansionTile(
          //   title: Text("FAQ QUESTION ONE"),
          //   controller: controller1,
          //   children: [
          //     Container(
          //       color: Colors.black12,
          //       padding: EdgeInsets.all(20),
          //       width: double.infinity,
          //       child: Text("Answers for Question One"),
          //     )
          //   ],
          // ),
          // Card(
          //   color: Colors.greenAccent[100],
          //   child: ExpansionTile(
          //     title: const Text("FAQ QUESTION ONE"),
          //     controller: controller2,
          //     onExpansionChanged: (value) {
          //       print('opened: $value');
          //     },
          //     children: [
          //       Stack(
          //         children: [
          //           Container(
          //             color: Colors.black12,
          //             padding: const EdgeInsets.all(20),
          //             width: double.infinity,
          //             child: const Text("Answers for Question One"),
          //           ),
          //         ],
          //       ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 100),
        ],
      ),
    );
  }
}
