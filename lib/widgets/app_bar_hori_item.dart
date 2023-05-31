import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppBarHoriItem extends StatefulWidget {
  final String label;
  final String route;
  final String namedRoute;

  const AppBarHoriItem({
    super.key,
    required this.label,
    required this.route,
    required this.namedRoute,
  });

  @override
  State<AppBarHoriItem> createState() => _AppBarHoriItemState();
}

class _AppBarHoriItemState extends State<AppBarHoriItem> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.goNamed(widget.namedRoute),
      // onTap: () => context.go(widget.route),
      onHover: (value) {
        // print('${widget.route} $value');
        setState(() {
          isHovered = value;
        });
      },
      child: Container(
        decoration: GoRouter.of(context).location == widget.route || isHovered
            ? BoxDecoration(
                color: Colors.white.withAlpha(30),
                border: const Border(
                  bottom: BorderSide(
                    width: 3,
                    color: Colors.white,
                  ),
                ),
              )
            : const BoxDecoration(),
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Center(
          child: Text(
            widget.label,
            style: TextStyle(
              fontSize: Theme.of(context).textTheme.bodyMedium!.fontSize,
            ),
          ),
        ),
      ),
    );
  }
}
