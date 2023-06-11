import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/config/config.dart';

class ContactInput extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final double width;
  final bool? isMessage;

  const ContactInput({
    super.key,
    required this.controller,
    required this.label,
    required this.width,
    this.isMessage,
  });

  @override
  State<ContactInput> createState() => _ContactInputState();
}

class _ContactInputState extends State<ContactInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Responsive.isMobile(context) ? widget.width / 2 : widget.width / 3,
      child: TextField(
        controller: widget.controller,
        maxLines: widget.isMessage != null && widget.isMessage! ? null : 1,
        decoration: InputDecoration(
          labelText: widget.label,
          labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.surface,
          ),
          contentPadding: const EdgeInsets.only(
            left: 20,
            bottom: 5,
            top: 5,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ),
        style: TextStyle(
          color: Theme.of(context).colorScheme.surface,
        ),
      ),
    );
  }
}
