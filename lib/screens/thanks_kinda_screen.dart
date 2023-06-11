import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class ThanksKindaScreen extends StatelessWidget {
  const ThanksKindaScreen({super.key});

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
                'Thanks for your thoughts & prayers.',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/thanks/thanks-kinda-1.png'),
                  Image.asset('assets/images/thanks/thanks-kinda-2.png'),
                  Image.asset('assets/images/thanks/thanks-kinda-3.png'),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
