import 'package:flutter/material.dart';
import '../global/global.dart';
import '../widgets/Navigation/AppBar/app_bar.dart';
import '../widgets/Inputs/checkbox.dart';
import '../widgets/Inputs/chips.dart';
import '../widgets/Inputs/date_picker.dart';
import '../widgets/Inputs/outlined_text_field.dart';
import '../widgets/Inputs/radio_button.dart';
import '../widgets/Inputs/sliders.dart';
import '../widgets/Inputs/switch.dart';
import '../widgets/Inputs/text_field.dart';
import '../widgets/Sizing/sized_box.dart';
import '../widgets/Inputs/time_picker.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 10;
    return Scaffold(
      appBar: const CsAppBar(title: Stringof.inputs),
      body: ListView(
        children: const [
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
          CsSizedBox(height: sizedBoxHeight),
          CsDatePicker(),
          CsSizedBox(height: sizedBoxHeight),
          CsTimePicker(),
          CsSizedBox(height: sizedBoxHeight),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CsSwitch(), Text(Stringof.wSwitch)],
          ),
          CsSizedBox(height: sizedBoxHeight),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [CsSlider(), Text(Stringof.wSlider)],
          ),
          CsFilterChip(),
        ],
      ),
    );
  }
}


// https://api.flutter.dev/flutter/material/FilterChip-class.html