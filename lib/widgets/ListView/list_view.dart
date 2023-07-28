import 'package:flutter/material.dart';

import '../../data/mock_list_items.dart';
import 'list_tile.dart';

class CustonListView extends StatelessWidget {
  final BuildContext context;

  const CustonListView({
    super.key,
    required this.context,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: widgetsList.length,
      // reverse: false,
      // itemExtent: 100,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return WidgetListItem(
          index: index,
          listTitle: widgetsList[index],
        );
      },
      separatorBuilder: (context, index) {
        return const SizedBox(
          height: 5,
        );
      },
    );
  }
}
