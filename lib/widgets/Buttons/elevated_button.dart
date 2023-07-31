import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../global/global.dart';
import '../Communication/SnackBar/custom_snackbar.dart';

class CsElevatedButton extends StatelessWidget {
  const CsElevatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );
    return ElevatedButton(
      style: style,
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

// create a widget test case to test ElevatedButton widget in flutter?
