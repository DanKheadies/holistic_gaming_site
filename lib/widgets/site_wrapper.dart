import 'package:firebase_analytics_web/firebase_analytics_web.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class SiteWrapper extends StatefulWidget {
  final Widget child;

  const SiteWrapper({
    super.key,
    required this.child,
  });

  @override
  State<SiteWrapper> createState() => _SiteWrapperState();
}

class _SiteWrapperState extends State<SiteWrapper> {
  bool scrollAtBottom = false;
  double scrollBottomValue = 0;
  FirebaseAnalyticsWeb analyticsWeb = FirebaseAnalyticsWeb();
  ScrollController scroller = ScrollController();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero).then((value) {
      // logPageAsEvent(context);
      logPage(context);
    });

    scroller.addListener(scrollListener);
  }

  // Future<void> logPageAsEvent(BuildContext context) async {
  //   // print(GoRouter.of(context).location);
  //   await analytics.logEvent(
  //     name: GoRouter.of(context).location,
  //   );
  // }

  Future<void> logPage(BuildContext context) async {
    await analyticsWeb.setCurrentScreen(
      screenName: GoRouter.of(context).location,
    );
  }

  void scrollListener() {
    if (scroller.position.atEdge) {
      bool isTop = scroller.position.pixels == 0;
      if (!isTop) {
        setState(() {
          scrollBottomValue = scroller.position.pixels;
          scrollAtBottom = true;
        });
      }
    }

    if (scrollAtBottom && scroller.position.pixels <= scrollBottomValue - 1.0) {
      setState(() {
        scrollAtBottom = false;
      });
    }
  }

  @override
  void dispose() {
    scroller.removeListener(scrollListener);
    scroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
          SingleChildScrollView(
            controller: scroller,
            child: widget.child,
          ),
          Positioned(
            bottom: 0,
            child: AnimatedOpacity(
              opacity: scrollAtBottom ? 1 : 0,
              duration: const Duration(milliseconds: 1000),
              child: Container(
                alignment: Alignment.center,
                color: Theme.of(context).colorScheme.surface,
                height: 25,
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(
                  bottom: 15,
                ),
                child: Text(
                  '© ${DateTime.now().year} DTFun LLC All rights reserved',
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.background,
                    // fontFamily: 'Inter',
                    // fontSize: width / 75,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: Responsive.isMobile(context)
          ? const CustomDrawer()
          : const SizedBox(),
    );
  }
}
