import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_catalog_flutter/presentation/widgets/Buttons/elevated_button.dart';
import 'package:widget_catalog_flutter/presentation/widgets/Buttons/outlined_button.dart';

import '../../../global/global.dart';

class IntroScreenOne extends StatelessWidget {
  const IntroScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colorof.secondaryColor,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            SvgPicture.asset(Stringof.imgWiki,
                width: MediaQuery.of(context).size.width * .65,
                fit: BoxFit.contain),
            const Spacer(),
            const SizedBox(
                width: 300, child: CsElevatedButton(btnTitle: "Sign Up now")),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                width: 300,
                child: CsOutlinedButton(
                  btnTitle: "Sign In",
                  onBtnPressed: () => context.pushNamed('intro-two'),
                )),
            const Spacer(),
            Image.asset(
              Stringof.imgSunrise,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fitWidth,
            )
          ],
        ),
      ),
    );
  }
}


// solve this error The argument type 'Future<Object?>' can't be assigned to the parameter type 'void Function()?