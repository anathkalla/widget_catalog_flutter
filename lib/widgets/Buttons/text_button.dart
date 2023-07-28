import 'package:flutter/material.dart';
import '../../global/global.dart';
import '../SnackBar/custom_snackbar.dart';

class CsTextButton extends StatelessWidget {
  const CsTextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => {
        CsSnackBar.buildSnackbar(
          context: context,
          message: Stringof.wTextButton,
        )
      },
      child: const Text(Stringof.wTextButton),
    );
  }
}
