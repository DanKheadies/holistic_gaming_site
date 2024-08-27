import 'package:flutter/material.dart';

class PixaToolTile extends StatefulWidget {
  final String title;
  final bool isExpanded;
  final ExpansionTileController controller;
  final Function(bool) expansionHandler;
  final List<Widget> content;

  const PixaToolTile({
    super.key,
    required this.title,
    required this.isExpanded,
    required this.controller,
    required this.expansionHandler,
    required this.content,
  });

  @override
  State<PixaToolTile> createState() => _PixaToolTileState();
}

class _PixaToolTileState extends State<PixaToolTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Theme.of(context).colorScheme.surface,
      child: ExpansionTile(
        title: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Text(
            widget.title,
            style: TextStyle(
              color: widget.isExpanded
                  ? Theme.of(context).colorScheme.surface
                  : Theme.of(context).scaffoldBackgroundColor,
              fontSize: 17,
              fontWeight:
                  widget.isExpanded ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        iconColor: Theme.of(context).colorScheme.surface,
        collapsedIconColor: Theme.of(context).scaffoldBackgroundColor,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        controller: widget.controller,
        onExpansionChanged: (value) => widget.expansionHandler(value),
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.content,
            ),
          ),
        ],
      ),
    );
  }
}
