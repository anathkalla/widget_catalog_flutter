import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../global/global.dart';
import '../SnackBar/custom_snackbar.dart';

class CsElevatedButton extends StatelessWidget {
  const CsElevatedButton({super.key, required BuildContext context});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        CsSnackBar.buildSnackbar(
          context: context,
          message: Stringof.wElevatedButton,
        );
        if (kDebugMode) {
          print('Button Clicked');
        }
      },
      child: const Text(Stringof.wElevatedButton),
    );
  }
}
