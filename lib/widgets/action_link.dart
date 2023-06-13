import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ActionLink extends StatefulWidget {
  final String text;
  final String? navLink;
  final Color? color;
  final double? fontSize;
  final TextAlign? alignment;
  final void Function() onTap;

  const ActionLink({
    super.key,
    required this.text,
    this.navLink,
    this.color,
    this.fontSize,
    this.alignment,
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
    return SelectionContainer.disabled(
      child: Container(
        margin: const EdgeInsets.only(
          top: 4,
        ),
        child: InkWell(
          onTap: widget.navLink != null && widget.navLink != ''
              ? () => toSite(widget.navLink!)
              : widget.onTap,
          onHover: (value) {
            setState(() {
              hovering = value;
            });
          },
          hoverColor: Colors.transparent,
          child: Text(
            widget.text,
            textAlign: widget.alignment ?? TextAlign.left,
            style: TextStyle(
              color: Colors.transparent,
              decoration:
                  hovering ? TextDecoration.none : TextDecoration.underline,
              decorationColor:
                  widget.color ?? Theme.of(context).colorScheme.surface,
              fontSize: widget.fontSize ??
                  Theme.of(context).textTheme.bodyMedium!.fontSize,
              shadows: [
                Shadow(
                  color: widget.color ?? Theme.of(context).colorScheme.surface,
                  offset: const Offset(0, -2),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
