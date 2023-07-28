import 'package:flutter/material.dart';

import '../global/global.dart';
import '../widgets/SnackBar/custom_snackbar.dart';

class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ElevatedButton(
              onPressed: () => {
                CustomSnackBar.buildSnackbar(
                  context: context,
                  message: Stringof.wElevatedButton,
                )
              },
              child: const Text(Stringof.wElevatedButton),
            ),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(
              onPressed: () => {
                CustomSnackBar.buildSnackbar(
                  context: context,
                  message: Stringof.wOutlinedButton,
                )
              },
              child: const Text(Stringof.wOutlinedButton),
            ),
            const SizedBox(
              height: 10,
            ),
            FilledButton(
              onPressed: () => {
                CustomSnackBar.buildSnackbar(
                  context: context,
                  message: Stringof.wFilledButton,
                )
              },
              child: const Text(Stringof.wFilledButton),
            ),
            const SizedBox(
              height: 10,
            ),
            FilledButton.tonal(
              onPressed: () => {
                CustomSnackBar.buildSnackbar(
                  context: context,
                  message: Stringof.wFilledTonalButton,
                )
              },
              child: const Text(Stringof.wFilledTonalButton),
            ),
            const SizedBox(
              height: 10,
            ),
            TextButton(
              onPressed: () => {
                CustomSnackBar.buildSnackbar(
                  context: context,
                  message: Stringof.wTextButton,
                )
              },
              child: const Text(Stringof.wTextButton),
            ),
            const SizedBox(
              height: 10,
            ),
            IconButton(
              icon: const Icon(Icons.account_balance_wallet_rounded),
              color: Colorof.secondaryColor,
              onPressed: () => {
                CustomSnackBar.buildSnackbar(
                  context: context,
                  message: Stringof.wIconButton,
                ),
              },
            ),
            const SizedBox(
              height: 10,
            ),
            // TODO : Segmented Button
          ],
        ),
      ),
    );
  }
}
