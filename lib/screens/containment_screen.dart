import 'package:flutter/material.dart';
import '../widgets/Containment/Cards/outlined_card.dart';
import '../widgets/Containment/Dialogs/alert_dialog.dart';
import '../widgets/Containment/Dialogs/basic_dialog.dart';
import '../widgets/Containment/Dialogs/full_screen_dialog.dart';
import '../widgets/Containment/ToolTip/plain_tooltip.dart';
import '../widgets/Containment/ToolTip/rich_tooltip.dart';
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
      body: Center(
        child: SizedBox(
          width: 600,
          child: ListView(
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
              CsOutlinedCard(),
              CsSizedBox(
                height: sizedBoxHeight,
              ),
              CsBasicDialog(),
              CsSizedBox(
                height: sizedBoxHeight,
              ),
              CsAlertDialog(),
              CsSizedBox(
                height: sizedBoxHeight,
              ),
              CsFullScreenDialog(),
              CsSizedBox(
                height: sizedBoxHeight,
              ),
              CsPlainTooltip(),
              CsSizedBox(
                height: sizedBoxHeight,
              ),
              CsRichTooltip()
            ],
          ),
        ),
      ),
    );
  }
}
