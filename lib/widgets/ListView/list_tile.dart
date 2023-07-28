import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wiki_template_app/global/global.dart';

import '../../router/routes/routes_constants.dart';

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
    return Card(
      child: ListTile(
        selectedTileColor: Colorof.secondaryColor,
        tileColor: Colorof.secondaryLightColor,
        selectedColor: Colors.white,
        leading: const SizedBox(
          width: 40,
          child: Placeholder(),
        ),
        title: Text(
          listTitle,
          textAlign: TextAlign.center,
        ),
        subtitle: const Text(
          listSubTitle,
          textAlign: TextAlign.center,
        ),
        trailing: const Icon(
          Icons.arrow_forward_rounded,
          color: Colorof.secondaryColor,
        ),
        onTap: () {
          if (kDebugMode) {
            print("List Tile Tapped");
          }
          context.pushNamed(RouteConstants.buttonsScreen);
        },
      ),
    );
  }
}
