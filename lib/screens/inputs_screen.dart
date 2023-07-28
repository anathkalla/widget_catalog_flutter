import 'package:flutter/material.dart';
import '../global/global.dart';
import '../widgets/Containment/AppBar/app_bar.dart';
import '../widgets/Inputs/checkbox.dart';
import '../widgets/Inputs/outlined_text_field.dart';
import '../widgets/Inputs/radio_button.dart';
import '../widgets/Inputs/text_field.dart';
import '../widgets/Containment/SizeWidgets/custom_sized_box.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 10;
    return const Scaffold(
      appBar: CsAppBar(title: Stringof.inputs),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CsSizedBox(height: sizedBoxHeight),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CsCheckbox(), Text(Stringof.wCheckBox)],
          ),
          CsSizedBox(height: sizedBoxHeight),
          CsOutlinedTextField(),
          CsSizedBox(height: sizedBoxHeight),
          Column(
            children: [CsTextField(), Text(Stringof.wTextField)],
          ),
          CsSizedBox(height: sizedBoxHeight),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CsRadioInput(), Text(Stringof.wRadioButton)],
          ),
        ],
      ),
    );
  }
}
