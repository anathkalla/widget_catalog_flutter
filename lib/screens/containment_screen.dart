import 'package:flutter/material.dart';
import '../widgets/Sizing/sized_box.dart';
import '../widgets/Containment/AppBar/app_bar.dart';
import '../global/global.dart';
import '../widgets/Containment/Cards/elevated_card.dart';
import '../widgets/Containment/Cards/filled_card.dart';

class ContainmentWidgets extends StatelessWidget {
  const ContainmentWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 10;
    return Scaffold(
      appBar: const CsAppBar(title: Stringof.appTitle),
      body: ListView(
        children: const [
          CsSizedBox(
            height: sizedBoxHeight,
          ),
          CsElevatedCard(),
          CsSizedBox(
            height: sizedBoxHeight,
          ),
          CsFilledCard(),
          CsSizedBox(
            height: sizedBoxHeight,
          ),
        ],
      ),
    );
  }
}
