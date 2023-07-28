import 'package:flutter/material.dart';

import '../../global/global.dart';
import '../Communication/SnackBar/custom_snackbar.dart';

class CsFilledButtonTonal extends StatelessWidget {
  const CsFilledButtonTonal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: () => {
        CsSnackBar.buildSnackbar(
          context: context,
          message: Stringof.wFilledTonalButton,
        )
      },
      child: const Text(Stringof.wFilledTonalButton),
    );
  }
}
