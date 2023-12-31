import 'package:flutter/material.dart';

import '../../../../data/mock_list_items.dart';
import 'list_tile.dart';

class CsListView extends StatelessWidget {
  final BuildContext context;

  const CsListView({
    super.key,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.separated(
            itemCount: widgetsList.length,
            // reverse: false,
            // itemExtent: 100,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return WidgetListItem(
                index: index,
                listTitle: widgetsList[index],
                route: widgetsList[index],
              );
            },
            separatorBuilder: (context, index) {
              return const SizedBox(
                height: 5,
              );
            },
          ),
        ),
      ],
    );
  }
}
