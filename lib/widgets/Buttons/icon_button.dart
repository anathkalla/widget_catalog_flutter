import 'package:flutter/material.dart';

import '../../global/global.dart';
import '../Communication/SnackBar/custom_snackbar.dart';

class CsIconButton extends StatelessWidget {
  const CsIconButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.account_balance_wallet_rounded),
      color: Colorof.secondaryColor,
      onPressed: () => {
        CsSnackBar.buildSnackbar(
          context: context,
          message: Stringof.wIconButton,
        ),
      },
    );
  }
}
