import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class ThanksScreen extends StatelessWidget {
  const ThanksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SiteWrapper(
      alwaysShowFooter: true,
      child: Stack(
        children: [
          Container(
            height: height - 56,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 25,
                width: width,
              ),
              const Text(
                'Thanks for your love & support.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Image.asset('assets/images/thanks/thanks.png'),
            ],
          ),
        ],
      ),
    );
  }
}
