import 'package:flutter/material.dart';

class ActionLink extends StatefulWidget {
  final String text;
  final void Function() onTap;

  const ActionLink({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<ActionLink> createState() => _ActionLinkState();
}

class _ActionLinkState extends State<ActionLink> {
  bool hovering = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        setState(() {
          hovering = value;
        });
      },
      child: Text(
        widget.text,
        style: TextStyle(
          color: Theme.of(context).colorScheme.background,
          decoration: hovering ? TextDecoration.none : TextDecoration.underline,
          fontSize: 14,
          fontWeight: FontWeight.w300,
          height: 1.25,
        ),
      ),
    );
  }
}
