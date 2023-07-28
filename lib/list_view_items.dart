import 'package:flutter/material.dart';

class WidgetListItem extends StatelessWidget {
  final int index;
  final String listTitle;
  static const String listSubTitle = "Widget";

  const WidgetListItem({
    super.key,
    required this.index,
    required this.listTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Text(index.toString()),
      title: Text(listTitle),
      subtitle: const Text(listSubTitle),
      trailing: const Icon(Icons.arrow_forward_rounded),
    );
  }
}

final List widgetsList = ['Buttons', 'Texts', 'Inputs'];
