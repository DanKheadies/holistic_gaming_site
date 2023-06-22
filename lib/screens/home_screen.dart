import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteWrapper(
      screen: 'Home',
      child: Responsive.isDesktop(context) || Responsive.isWideDesktop(context)
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Jumbotron(),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Flexible(
                        flex: 1,
                        child: SizedBox(),
                      ),
                      Flexible(
                        flex: Responsive.isDesktop(context) ? 7 : 5,
                        child: const HomeLeftCol(),
                      ),
                      const SizedBox(width: 50),
                      Flexible(
                        flex: Responsive.isDesktop(context) ? 7 : 5,
                        child: const HomeRightCol(),
                      ),
                      const Flexible(
                        flex: 1,
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 75),
              ],
            )
          : const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Jumbotron(),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: HomeLeftCol(),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: HomeRightCol(),
                ),
                SizedBox(height: 75),
              ],
            ),
    );
  }
}
