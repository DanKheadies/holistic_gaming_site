import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class SquadMember extends StatelessWidget {
  final String name;

  const SquadMember({
    super.key,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Center(
      child: Container(
        padding: const EdgeInsets.all(25),
        width: Responsive.isMobile(context) || Responsive.isTablet(context)
            ? width
            : width / 1.5,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Theme.of(context).colorScheme.surface,
              ),
              child: Text(
                name,
                style: TextStyle(
                  color: Theme.of(context).colorScheme.background,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Responsive.isMobile(context)
                ? const Column(
                    children: [
                      MemberImage(),
                      SizedBox(height: 25),
                      MemberDescription(),
                    ],
                  )
                : const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MemberImage(),
                      SizedBox(width: 25),
                      MemberDescription(),
                    ],
                  ),
          ],
        ),
      ),
    );
  }
}
