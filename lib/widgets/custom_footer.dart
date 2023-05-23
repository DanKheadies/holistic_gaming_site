import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:holistic_gaming_site/config/config.dart';
import 'package:holistic_gaming_site/widgets/widgets.dart';

class CustomFooter extends StatefulWidget {
  final ScrollController scroller;

  const CustomFooter({
    super.key,
    required this.scroller,
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

  void toSite(String site) async {
    final Uri url = Uri.parse(site);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
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
        opacity: scrollAtBottom ? 1 : 0,
        duration: const Duration(milliseconds: 1000),
        child: Container(
          alignment: Alignment.center,
          color: Theme.of(context).colorScheme.surface,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.only(
            bottom: Responsive.isMobile(context) ? 5 : 15,
          ),
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 8,
          ),
          child: Responsive.isMobile(context)
              ? Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // TODO: on hover; explain
                        ActionLink(
                          text: 'CC SA NC BY',
                          onTap: () =>
                              toSite('https://creativecommons.org/licenses/'),
                        ),
                        const SizedBox(width: 6),
                        ActionLink(
                          text: 'DTFun LLC',
                          onTap: () => context.goNamed('contact'),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '${DateTime.now().year}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Powered by love and ',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        ActionLink(
                          text: 'support',
                          onTap: () => toSite(
                              'https://www.paypal.com/donate/?cmd=_s-xclick&hosted_button_id=P8HU4RD3W2XQY&source=url&ssrt=1684876315079'),
                        ),
                        Text(
                          '.',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ActionLink(
                          text: 'CC SA NC BY',
                          onTap: () =>
                              toSite('https://creativecommons.org/licenses/'),
                        ),
                        const SizedBox(width: 6),
                        ActionLink(
                          text: 'DTFun LLC',
                          onTap: () => context.goNamed('contact'),
                        ),
                        const SizedBox(width: 6),
                        Text(
                          '${DateTime.now().year}',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Powered by love and ',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        ActionLink(
                          text: 'support',
                          onTap: () => toSite(
                              'https://www.paypal.com/donate/?cmd=_s-xclick&hosted_button_id=P8HU4RD3W2XQY&source=url&ssrt=1684876315079'),
                        ),
                        Text(
                          '.',
                          style: TextStyle(
                            color: Theme.of(context).colorScheme.background,
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
