import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteWrapper(
      child: Responsive.isDesktop(context) || Responsive.isWideDesktop(context)
          ? const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Jumbotron(),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Flexible(
                        flex: 1,
                        child: HomeLeftCol(),
                      ),
                      SizedBox(width: 10),
                      Flexible(
                        flex: 1,
                        child: HomeRightCol(),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 50),
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
                SizedBox(height: 50),
              ],
            ),
    );
  }
}
