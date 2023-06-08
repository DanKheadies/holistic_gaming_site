import 'package:flutter/material.dart';

import 'package:holistic_gaming_site/widgets/widgets.dart';

class ArticleFilter extends StatefulWidget {
  final Function(String) handleFilter;

  const ArticleFilter({
    super.key,
    required this.handleFilter,
  });

  @override
  State<ArticleFilter> createState() => _ArticleFilterState();
}

class _ArticleFilterState extends State<ArticleFilter> {
  String filter = 'All Articles';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        ListTile(
          title: filter == 'All Articles'
              ? const Text('All Articles')
              : ActionLink(
                  text: 'All Articles',
                  onTap: () {
                    setState(() {
                      filter = 'All Articles';
                    });
                    widget.handleFilter(filter);
                  },
                ),
          trailing: Icon(
            Icons.filter_list,
            color: filter == 'All Articles'
                ? Theme.of(context).colorScheme.surface
                : Theme.of(context).colorScheme.background,
          ),
        ),
        ListTile(
          title: filter == 'Dan Kheadies'
              ? const Text('Dan Kheadies')
              : ActionLink(
                  text: 'Dan Kheadies',
                  onTap: () {
                    setState(() {
                      filter = 'Dan Kheadies';
                    });
                    widget.handleFilter(filter);
                  },
                ),
          trailing: Icon(
            Icons.filter_list,
            color: filter == 'Dan Kheadies'
                ? Theme.of(context).colorScheme.surface
                : Theme.of(context).colorScheme.background,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
        ),
        ListTile(
          title: filter == 'Gaming'
              ? const Text('Gaming')
              : ActionLink(
                  text: 'Gaming',
                  onTap: () {
                    setState(() {
                      filter = 'Gaming';
                    });
                    widget.handleFilter(filter);
                  },
                ),
          trailing: Icon(
            Icons.filter_list,
            color: filter == 'Gaming'
                ? Theme.of(context).colorScheme.surface
                : Theme.of(context).colorScheme.background,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
        ),
        ListTile(
          title: filter == 'Immunis'
              ? const Text('Immunis')
              : ActionLink(
                  text: 'Immunis',
                  onTap: () {
                    setState(() {
                      filter = 'Immunis';
                    });
                    widget.handleFilter(filter);
                  },
                ),
          trailing: Icon(
            Icons.filter_list,
            color: filter == 'Immunis'
                ? Theme.of(context).colorScheme.surface
                : Theme.of(context).colorScheme.background,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
        ),
      ],
    );
  }
}
