import 'package:firebase_analytics_web/firebase_analytics_web.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class SiteWrapper extends StatefulWidget {
  final Widget child;
  final Widget? bottAppBar;
  final bool? alwaysShowFooter;
  final Widget? fullscreenBackground;

  const SiteWrapper({
    super.key,
    required this.child,
    this.bottAppBar,
    this.alwaysShowFooter,
    this.fullscreenBackground,
  });

  @override
  State<SiteWrapper> createState() => _SiteWrapperState();
}

class _SiteWrapperState extends State<SiteWrapper> {
  bool showButton = false;
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
    if (scroller.position.pixels >= 50) {
      setState(() {
        showButton = true;
      });
    } else {
      setState(() {
        showButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Title(
      title: 'Holistic Gaming',
      color: Theme.of(context).colorScheme.surface,
      child: Scaffold(
        appBar: const CustomAppBar(),
        body: Stack(
          children: [
            widget.fullscreenBackground ?? const SizedBox(),
            RawScrollbar(
              controller: scroller,
              shape: const StadiumBorder(),
              thumbColor: Theme.of(context).colorScheme.surface,
              thickness: 10,
              crossAxisMargin: 1,
              child: SingleChildScrollView(
                controller: scroller,
                child: widget.child,
              ),
            ),
            // Note: leaves a "hitbox" to be clicked / deadspace that can't be scrolled over
            // Would like a better solution that ignores but allows for the AnimatedOpacity
            CustomFooter(
              scroller: scroller,
              alwaysShowFooter: widget.alwaysShowFooter,
            ),
          ],
        ),
        endDrawer: Responsive.isMobile(context)
            ? const CustomDrawer()
            : const SizedBox(),
        bottomNavigationBar: widget.bottAppBar,
        // Note: leaves a "hitbox" to be clicked / deadspace that can't be scrolled over
        // Would like a better solution that ignores but allows for the AnimatedOpacity
        floatingActionButton: showButton
            ? AnimatedOpacity(
                opacity: showButton ? 1 : 0,
                onEnd: () => print('test'),
                duration: const Duration(seconds: 1),
                curve: Curves.easeIn,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: FloatingActionButton(
                    backgroundColor: Theme.of(context).colorScheme.surface,
                    onPressed: () {
                      scroller.animateTo(
                        0,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeIn,
                      );
                    },
                    child: Icon(
                      Icons.arrow_upward,
                      color: Theme.of(context).colorScheme.background,
                    ),
                  ),
                ),
              )
            : const SizedBox(),
      ),
    );
  }
}
