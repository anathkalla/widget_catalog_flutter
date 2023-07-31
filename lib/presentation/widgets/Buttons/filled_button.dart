import 'package:flutter/material.dart';

import '../../../global/global.dart';
import '../Communication/SnackBar/custom_snackbar.dart';

class CsFilledButton extends StatelessWidget {
  const CsFilledButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: () => {
        CsSnackBar.buildSnackbar(
          context: context,
          message: Stringof.wFilledButton,
        )
      },
      child: const Text(Stringof.wFilledButton),
    );
  }
}
