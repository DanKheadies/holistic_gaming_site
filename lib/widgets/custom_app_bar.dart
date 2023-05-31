import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      // title: const Text('Holistic Gaming'),
      leading: InkWell(
        onTap: () => context.goNamed('home'),
        // onTap: () => context.go('/home'),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                      Theme.of(context).colorScheme.background,
                      Theme.of(context).colorScheme.surface,
                    ],
                    radius: 0.525,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: Image.asset('/images/logo/hg-logo.png'),
              ),
            ],
          ),
        ),
      ),
      actions: Responsive.isMobile(context)
          ? []
          : const [
              AppBarHoriItem(
                label: 'Holistic Gaming',
                route: '/home',
                namedRoute: 'home',
              ),
              SizedBox(width: 10),
              AppBarHoriItem(
                label: 'Games',
                route: '/games',
                namedRoute: 'games',
              ),
              SizedBox(width: 10),
              AppBarHoriItem(
                label: 'Research',
                route: '/research',
                namedRoute: 'research',
              ),
              SizedBox(width: 10),
              AppBarHoriItem(
                label: 'Squad',
                route: '/squad',
                namedRoute: 'squad',
              ),
              SizedBox(width: 10),
            ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56);
}
