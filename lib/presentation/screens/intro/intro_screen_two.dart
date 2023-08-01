import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_catalog_flutter/presentation/widgets/Buttons/filled_button.dart';
import 'package:widget_catalog_flutter/presentation/widgets/Buttons/text_button.dart';

import '../../../global/global.dart';

class IntroScreenTwo extends StatelessWidget {
  const IntroScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          Stringof.imgIntroTwo,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .65,
            ),
            Center(
              child: SizedBox(
                height: 35,
                width: 300,
                child: CsFilledButton(
                  btnTitle: "Next",
                  onBtnPressed: () => context.pushNamed('intro-last'),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CsTextButton(
              btnTitle: "Skip",
              onBtnPressed: () => const Text("Btn Pressed"),
            )
          ],
        )
      ]),
    );
  }
}
