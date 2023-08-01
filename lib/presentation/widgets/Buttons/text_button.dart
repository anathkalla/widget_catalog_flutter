import 'package:flutter/material.dart';
import '../../../global/global.dart';
import '../Communication/SnackBar/custom_snackbar.dart';

class CsTextButton extends StatelessWidget {
  final String btnTitle;
  final VoidCallback onBtnPressed;
  const CsTextButton({
    super.key,
    this.btnTitle = Stringof.wTextButton,
    required this.onBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {
        CsSnackBar.buildSnackbar(
          context: context,
          message: btnTitle,
        )
      },
      child: Text(btnTitle),
    );
  }
}
