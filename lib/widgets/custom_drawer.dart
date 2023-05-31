import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          InkWell(
            onTap: () => context.goNamed('home'),
            child: const DrawerHeader(
              margin: EdgeInsets.only(
                top: 15,
                bottom: 15,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/logo/hg-logo.png'),
                  fit: BoxFit.contain,
                ),
              ),
              child: SizedBox(),
            ),
            // child: BlocBuilder<BrightnessCubit, Brightness>(
            //   builder: (context, state) {
            //     return DrawerHeader(
            //       margin: const EdgeInsets.only(
            //         bottom: 10,
            //         top: 35,
            //       ),
            //       decoration: BoxDecoration(
            //         image: DecorationImage(
            //           image: state == Brightness.dark
            //               ? const AssetImage(
            //                   'assets/images/main/corso-games-2.png')
            //               : const AssetImage(
            //                   'assets/images/main/corso-games-1.png'),
            //           fit: BoxFit.contain,
            //         ),
            //       ),
            //       child: const SizedBox(),
            //     );
            //   },
            // ),
          ),
          ListTile(
            title: Text(
              'Holistic Gaming',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.background,
              ),
            ),
            onTap: () => context.goNamed('home'),
            hoverColor: Theme.of(context).colorScheme.background.withAlpha(30),
          ),
          ListTile(
            title: Text(
              'Games',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.background,
              ),
            ),
            onTap: () => context.goNamed('games'),
            hoverColor: Theme.of(context).colorScheme.background.withAlpha(30),
          ),
          ListTile(
            title: Text(
              'Research',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.background,
              ),
            ),
            onTap: () => context.goNamed('research'),
            hoverColor: Theme.of(context).colorScheme.background.withAlpha(30),
          ),
          ListTile(
            title: Text(
              'Squad',
              style: TextStyle(
                fontSize: 18,
                color: Theme.of(context).colorScheme.background,
              ),
            ),
            onTap: () => context.goNamed('squad'),
            hoverColor: Theme.of(context).colorScheme.background.withAlpha(30),
          ),
        ],
      ),
    );
  }
}
