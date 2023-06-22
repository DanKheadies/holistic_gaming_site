import 'dart:async';

import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
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
  Map<int, List<bool>> isSubTileExpanded = {};

  @override
  void initState() {
    super.initState();

    setupArticles();
    handleUrlLink();
  }

  void setupArticles() {
    articles.sort(
      (a, b) => a.shortTitle.compareTo(b.refTitle),
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

    for (int i = 0; i < articles.length; i++) {
      setState(() {
        controllers.add(ExpansionTileController());
        isTileExpanded.add(false);
        if (articles[i].subsetLists != null) {
          isSubTileExpanded.addAll(<int, List<bool>>{
            i: List<bool>.generate(
              articles[i].subsetLists!.length,
              (index) => false,
            ),
          });
        }
      });
    }
  }

  void handleUrlLink() {
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
      }
    }
  }

  void closeAllTiles() {
    setState(() {
      isTileExpanded.map((tile) => tile == false);
      tileOrder.clear();
    });

    // NOTE: kinda a work around, but not good enough
    // Timer(
    //   Duration.zero,
    //   () {
    //     for (var cont in controllers) {
    //       cont.collapse();
    //     }
    //   },
    // );
    for (var cont in controllers) {
      cont.collapse();
    }
  }

  // TODO: using filtering breaks because of the ExpansionTile controllers
  // The ExpTile assets there's a state (i.e. not null)
  // But it's sending a null value when I try to collapse (see above).
  // Collapsing before filtering has no issues.
  // Collapsing non-programmatically (i.e. clicking) works fine after filtering.
  // UPDATE: can remove the progammatic-close (as well as accordion close bar)
  // and all works "fine."
  // UPDATE: disabling CloseBar & prog-close until further tests
  // OPTIONS:
  // 1) Re-construct ExpansionTiles by hand to avoid state issue
  // 2) Pray
  void handleFilter(String filter) {
    // closeAllTiles();

    List<ResearchArticle> filteredArticles = [];
    if (filter == '' || filter == 'All Articles') {
      filteredArticles = ResearchArticle.articles;
    } else {
      filteredArticles = ResearchArticle.articles
          .where((art) => art.filter == filter)
          .toList();
    }

    setState(() {
      articles = filteredArticles;
    });

    setupArticles();
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return SiteWrapper(
      screen: 'Research',
      // bottAppBar: AccordionCloseBar(
      //   isTileExpanded: isTileExpanded,
      //   tileOrder: tileOrder,
      //   controllers: controllers,
      //   handleCloseAllTiles: closeAllTiles,
      //   handleCloseLastTile: () {
      //     setState(() {
      //       isTileExpanded[tileOrder.last] = false;
      //     });
      //     controllers[tileOrder.last].collapse();
      //   },
      // ),
      child: Column(
        children: [
          const QuotesHeader(),
          Responsive.isMobile(context) || Responsive.isTablet(context)
              ? Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width / 10,
                  ),
                  child: ArticleFilter(
                    handleFilter: handleFilter,
                  ),
                )
              : const SizedBox(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Responsive.isDesktop(context) || Responsive.isWideDesktop(context)
                  ? Expanded(
                      flex: 1,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 25,
                        ),
                        child: ArticleFilter(
                          handleFilter: handleFilter,
                        ),
                      ),
                    )
                  : const SizedBox(),
              Expanded(
                flex: Responsive.isWideDesktop(context) ? 4 : 3,
                child: ArticleList(
                  articles: articles,
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
    );
  }
}
