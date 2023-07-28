import 'package:flutter/material.dart';
import '../widgets/AppBar/app_bar.dart';
import '../widgets/Buttons/elevated_button.dart';
import '../widgets/Buttons/filled_button.dart';
import '../widgets/Buttons/filled_button_tonal.dart';
import '../widgets/Buttons/icon_button.dart';
import '../widgets/Buttons/outlined_button.dart';
import '../widgets/Buttons/text_button.dart';
import '../widgets/SizeWidgets/custom_sized_box.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double sizedBoxHeight = 20;
    return Scaffold(
      appBar: const CsAppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CsElevatedButton(
                  context: context,
                ),
                const CsSizedBox(height: sizedBoxHeight),
                const CsOutlinedButton(),
                const CsSizedBox(height: sizedBoxHeight),
                const CsFilledButton(),
                const CsSizedBox(height: sizedBoxHeight),
                const CsFilledButtonTonal(),
                const CsSizedBox(height: sizedBoxHeight),
                const CsTextButton(),
                const CsSizedBox(height: sizedBoxHeight),
                const CsIconButton(),
                const CsSizedBox(height: sizedBoxHeight),
                // TODO : Segmented Button
              ],
            ),
          ),
        ),
      ),
    );
  }
}
