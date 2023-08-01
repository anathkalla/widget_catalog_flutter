import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/presentation/widgets/Buttons/disabled_button.dart';
import 'package:widget_catalog_flutter/presentation/widgets/Buttons/ElevatedBtn/elevated_button.dart';
import 'package:widget_catalog_flutter/presentation/widgets/Sizing/sized_box.dart';

import '../../../global/global.dart';
import '../../widgets/Containment/Image/asset_image.dart';

//create a flutter image asset widget>?

class ViewFile extends StatelessWidget {
  const ViewFile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height * 0.65;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            // color: Colorof.secondaryColor.withOpacity(0.6),
            height: screenHeight,
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: CsAssetImage(
                imageUrl: Stringof.imgSunset,
              ),
            ),
          ),
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
