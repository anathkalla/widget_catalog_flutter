import 'package:flutter/material.dart';
import '../global/global.dart';
import '../widgets/AppBar/app_bar.dart';
import '../widgets/Buttons/disabled_button.dart';
import '../widgets/Buttons/elevated_button.dart';
import '../widgets/Buttons/filled_button.dart';
import '../widgets/Buttons/filled_button_tonal.dart';
import '../widgets/Buttons/floating_action_button.dart';
import '../widgets/Buttons/icon_button.dart';
import '../widgets/Buttons/outlined_button.dart';
import '../widgets/Buttons/segmented_button.dart';
import '../widgets/Buttons/text_button.dart';
import '../widgets/Buttons/toggle_button.dart';
import '../widgets/SizeWidgets/custom_sized_box.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 10;
    return const Scaffold(
      appBar: CsAppBar(),
      floatingActionButton: CsFloatingActionButton(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CsSizedBox(height: sizedBoxHeight),
            CsElevatedButton(),
            CsSizedBox(height: sizedBoxHeight),
            CsDisabledButton(),
            CsSizedBox(height: sizedBoxHeight),
            CsOutlinedButton(),
            CsSizedBox(height: sizedBoxHeight),
            CsFilledButton(),
            CsSizedBox(height: sizedBoxHeight),
            CsFilledButtonTonal(),
            CsSizedBox(height: sizedBoxHeight),
            CsTextButton(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CsIconButton(),
                Text(Stringof.wIconButton),
              ],
            ),
            Column(
              children: [
                CsSegmentedButton(),
                Text(Stringof.wSegmentedButton),
              ],
            ),
            CsToggleButton()
          ],
        ),
      ),
    );
  }
}
