import 'package:flutter/material.dart';
import '../../global/global.dart';
import '../SnackBar/custom_snackbar.dart';

class CsFloatingActionButton extends StatelessWidget {
  const CsFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colorof.accentColor,
      onPressed: () {
        CsSnackBar.buildSnackbar(
          context: context,
          message: Stringof.wfab,
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
