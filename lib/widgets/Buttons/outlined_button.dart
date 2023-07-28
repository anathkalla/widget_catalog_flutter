import 'package:flutter/material.dart';

import '../../global/global.dart';
import '../SnackBar/custom_snackbar.dart';

class CsOutlinedButton extends StatelessWidget {
  const CsOutlinedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => {
        CsSnackBar.buildSnackbar(
          context: context,
          message: Stringof.wOutlinedButton,
        )
      },
      child: const Text(Stringof.wOutlinedButton),
    );
  }
}
