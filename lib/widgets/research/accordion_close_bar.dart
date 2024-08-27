// import 'dart:async';

import 'package:flutter/material.dart';

class AccordionCloseBar extends StatefulWidget {
  final List<bool> isTileExpanded;
  final List<int> tileOrder;
  final List<ExpansionTileController> controllers;
  final Function() handleCloseAllTiles;
  final Function() handleCloseLastTile;

  const AccordionCloseBar({
    super.key,
    required this.isTileExpanded,
    required this.tileOrder,
    required this.controllers,
    required this.handleCloseAllTiles,
    required this.handleCloseLastTile,
  });

  @override
  State<AccordionCloseBar> createState() => _AccordionCloseBarState();
}

class _AccordionCloseBarState extends State<AccordionCloseBar> {
  @override
  Widget build(BuildContext context) {
    return widget.isTileExpanded.any((tile) => tile)
        ? BottomAppBar(
            color: Theme.of(context).colorScheme.surface,
            child: SizedBox(
              height: 56,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: widget.handleCloseAllTiles,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Close All',
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: widget.handleCloseLastTile,
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        'Close Last',
                        style: TextStyle(
                          color: Theme.of(context).scaffoldBackgroundColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        : const BottomAppBar();
  }
}
