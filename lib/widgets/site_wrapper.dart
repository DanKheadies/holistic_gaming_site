import 'package:firebase_analytics_web/firebase_analytics_web.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class SiteWrapper extends StatefulWidget {
  final Widget child;
  final Widget? bottAppBar;
  final bool? alwaysShowFooter;

  const SiteWrapper({
    super.key,
    required this.child,
    this.bottAppBar,
    this.alwaysShowFooter,
  });

  @override
  State<SiteWrapper> createState() => _SiteWrapperState();
}

class _SiteWrapperState extends State<SiteWrapper> {
  FirebaseAnalyticsWeb analyticsWeb = FirebaseAnalyticsWeb();
  ScrollController scroller = ScrollController();

  @override
  void initState() {
    super.initState();

    Future.delayed(Duration.zero).then((value) {
      // logPageAsEvent(context);
      logPage(context);
    });
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Stack(
        children: [
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
    );
  }
}
