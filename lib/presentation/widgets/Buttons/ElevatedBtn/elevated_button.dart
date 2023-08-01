import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../Communication/SnackBar/custom_snackbar.dart';

class CsElevatedButton extends StatelessWidget {
  final String btnTitle;

  const CsElevatedButton({super.key, this.btnTitle = "Elevated Button"});

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
          message: btnTitle,
        );
        if (kDebugMode) {
          print('Button Clicked');
        }
      },
      child: Text(btnTitle),
    );
  }
}

// create a widget test case to test ElevatedButton widget in flutter?
