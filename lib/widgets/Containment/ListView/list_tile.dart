import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../global/global.dart';

class WidgetListItem extends StatelessWidget {
  final int index;
  final String listTitle;
  static const String listSubTitle = "Widget";
  final String route;

  const WidgetListItem(
      {super.key,
      required this.index,
      required this.listTitle,
      required this.route});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        selectedTileColor: Colorof.secondaryColor,
        tileColor: Colorof.secondaryLightColor,
        selectedColor: Colors.white,
        leading: const SizedBox(
          width: 40,
          child: FlutterLogo(),
        ),
        title: Text(
          listTitle.toUpperCase(),
          textAlign: TextAlign.center,
        ),
        subtitle: const Text(
          listSubTitle,
          textAlign: TextAlign.center,
        ),
        onTap: () {
          context.pushNamed(route);
        },
      ),
    );
  }
}
