import 'package:flutter/material.dart';
import '../../../global/global.dart';
import '../../widgets/Buttons/pop_up_menu_button.dart';
import '../../widgets/Navigation/AppBar/app_bar.dart';
import '../../widgets/Buttons/disabled_button.dart';
import '../../widgets/Buttons/elevated_button.dart';
import '../../widgets/Buttons/filled_button.dart';
import '../../widgets/Buttons/filled_button_tonal.dart';
import '../../widgets/Buttons/floating_action_button.dart';
import '../../widgets/Buttons/icon_button.dart';
import '../../widgets/Buttons/outlined_button.dart';
import '../../widgets/Buttons/segmented_button.dart';
import '../../widgets/Buttons/text_button.dart';
import '../../widgets/Buttons/toggle_button.dart';
import '../../widgets/Sizing/sized_box.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 10;
    return Scaffold(
      appBar: const CsAppBar(title: Stringof.buttons),
      floatingActionButton: const CsFloatingActionButton(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const CsSizedBox(height: sizedBoxHeight),
            const CsElevatedButton(),
            const CsSizedBox(height: sizedBoxHeight),
            const CsDisabledButton(),
            const CsSizedBox(height: sizedBoxHeight),
            CsOutlinedButton(
              onBtnPressed: () => const Text("Btn Pressed"),
            ),
            const CsSizedBox(height: sizedBoxHeight),
            CsFilledButton(onBtnPressed: () => const Text("Btn Pressed")),
            const CsSizedBox(height: sizedBoxHeight),
            const CsFilledButtonTonal(),
            const CsSizedBox(height: sizedBoxHeight),
            CsTextButton(onBtnPressed: () => const Text("Btn Pressed")),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CsIconButton(),
                Text(Stringof.wIconButton),
              ],
            ),
            const Column(
              children: [
                CsSegmentedButton(),
                Text(Stringof.wSegmentedButton),
              ],
            ),
            const CsToggleButton(),
            const Text(Stringof.wToggleButton),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [CsPopupMenu(), Text(Stringof.wPopUpMenuButton)],
            ),
          ],
        ),
      ),
    );
  }
}
