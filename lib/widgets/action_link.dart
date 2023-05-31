import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionLink extends StatefulWidget {
  final String text;
  final String? navLink;
  final Color? color;
  final double? fontSize;
  final void Function() onTap;

  const ActionLink({
    super.key,
    required this.text,
    this.navLink,
    this.color,
    this.fontSize,
    required this.onTap,
  });

  @override
  State<ActionLink> createState() => _ActionLinkState();
}

class _ActionLinkState extends State<ActionLink> {
  bool hovering = false;

  void toSite(String site) async {
    final Uri url = Uri.parse(site);
    if (!await launchUrl(url)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:
          widget.navLink != null ? () => toSite(widget.navLink!) : widget.onTap,
      onHover: (value) {
        setState(() {
          hovering = value;
        });
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color: widget.color ?? Theme.of(context).colorScheme.background,
          decoration: hovering ? TextDecoration.none : TextDecoration.underline,
          fontSize: widget.fontSize ??
              Theme.of(context).textTheme.bodySmall!.fontSize,
          fontWeight: FontWeight.w300,
          height: Theme.of(context).textTheme.bodySmall!.height,
        ),
      ),
    );
  }
}
