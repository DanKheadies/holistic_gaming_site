import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class CustomFooter extends StatefulWidget {
  final ScrollController scroller;
  final bool? alwaysShowFooter;

  const CustomFooter({
    super.key,
    required this.scroller,
    this.alwaysShowFooter,
  });

  @override
  State<CustomFooter> createState() => _CustomFooterState();
}

class _CustomFooterState extends State<CustomFooter> {
  bool scrollAtBottom = false;
  double scrollBottomValue = 0;

  @override
  void initState() {
    super.initState();

    widget.scroller.addListener(scrollListener);
  }

  void scrollListener() {
    if (widget.scroller.position.atEdge) {
      bool isTop = widget.scroller.position.pixels == 0;
      if (!isTop) {
        setState(() {
          scrollBottomValue = widget.scroller.position.pixels;
          scrollAtBottom = true;
        });
      }
    }

    if (scrollAtBottom &&
        widget.scroller.position.pixels <= scrollBottomValue - 1.0) {
      setState(() {
        scrollAtBottom = false;
      });
    }
  }

  Widget buildPromptContent() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          'Except where noted, all content on this site is licensed under a ',
        ),
        const SizedBox(height: 15),
        ActionLink(
          text: 'CC Attribution 4.0 International License',
          navLink: 'https://creativecommons.org/licenses/',
          onTap: () {},
        ),
        const SizedBox(height: 15),
        const Text(
          'ShareAlike',
        ),
        const Text(
          'NonCommercial',
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Attribution—',
            ),
            ActionLink(
              text: 'DTFun LLC',
              onTap: () => context.goNamed('contact'),
            ),
          ],
        ),
      ],
    );
  }

  Row buildAttribution() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ActionLink(
          text: 'CC SA NC BY',
          color: Theme.of(context).scaffoldBackgroundColor,
          fontSize: 14,
          onTap: () => playOnPrompt(
            context,
            'CC Attribution License',
            buildPromptContent(),
          ),
        ),
        const SizedBox(width: 6),
        ActionLink(
          text: 'DTFun LLC',
          color: Theme.of(context).scaffoldBackgroundColor,
          fontSize: 14,
          onTap: () => context.goNamed('contact'),
        ),
        const SizedBox(width: 6),
        Text(
          '${DateTime.now().year}',
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
            fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }

  Row buildLoveSupport() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Powered by love and ',
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
            fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
            fontWeight: FontWeight.w300,
          ),
        ),
        ActionLink(
          text: 'support',
          color: Theme.of(context).scaffoldBackgroundColor,
          fontSize: 14,
          navLink:
              'https://www.paypal.com/donate/?cmd=_s-xclick&hosted_button_id=P8HU4RD3W2XQY&source=url&ssrt=1684876315079',
          onTap: () {},
        ),
        Text(
          '.',
          style: TextStyle(
            color: Theme.of(context).scaffoldBackgroundColor,
            fontSize: Theme.of(context).textTheme.bodySmall!.fontSize,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    widget.scroller.removeListener(scrollListener);
    widget.scroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 0,
      child: AnimatedOpacity(
        opacity: widget.alwaysShowFooter ?? scrollAtBottom ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: Container(
          alignment: Alignment.center,
          color: Theme.of(context).colorScheme.surface,
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: Responsive.isMobile(context)
              ? Column(
                  children: [
                    buildAttribution(),
                    buildLoveSupport(),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    buildAttribution(),
                    buildLoveSupport(),
                  ],
                ),
        ),
      ),
    );
  }
}
