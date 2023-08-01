import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_catalog_flutter/presentation/widgets/Buttons/filled_button.dart';

import '../../../global/global.dart';

class IntroScreenThree extends StatelessWidget {
  const IntroScreenThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          Stringof.imgIntroThree,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),
        Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * .75,
            ),
            Center(
              child: SizedBox(
                height: 35,
                width: 300,
                child: CsFilledButton(
                  btnTitle: "Complete",
                  onBtnPressed: () => context.pushNamed('home'),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
