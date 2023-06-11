import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/models/models.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class SquadScreen extends StatelessWidget {
  const SquadScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SiteWrapper(
      alwaysShowFooter: true,
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 56,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: SquadMember.squad.length,
                itemBuilder: (context, index) {
                  return MemberContainer(
                    name: SquadMember.squad[index].name,
                    imageUrl: SquadMember.squad[index].imageUrl,
                    description: SquadMember.squad[index].description,
                    linkText: SquadMember.squad[index].linkText,
                    linkUrl: SquadMember.squad[index].linkUrl,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
