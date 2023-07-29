import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/widgets/Buttons/disabled_button.dart';
import 'package:widget_catalog_flutter/widgets/Buttons/elevated_button.dart';
import 'package:widget_catalog_flutter/widgets/Containment/SizeWidgets/custom_sized_box.dart';

import '../global/global.dart';

class ViewFile extends StatelessWidget {
  const ViewFile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height * 0.65;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
              color: Colorof.secondaryColor.withOpacity(0.6),
              height: screenHeight),
          const CsSizedBox(
            height: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [CsElevatedButton(), CsDisabledButton()],
          )
        ],
      ),
    );
  }
}
