import 'package:flutter/material.dart';

// import 'package:holistic_gaming_site/config/config.dart';
// import 'package:holistic_gaming_site/data/data.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Jumbotron(),
            const SizedBox(height: 10),
            // Responsive.isDesktop(context) || Responsive.isWideDesktop(context)
            //     ? Container(
            //         width: width / 2,
            //         height: height,
            //         color: Colors.red,
            //       )
            //     : Container(
            //         width: width / 2,
            //         height: height,
            //         color: Colors.blue,
            //       ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const HomeLeftCol(),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.blue,
                      height: height,
                      child: const SizedBox(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
