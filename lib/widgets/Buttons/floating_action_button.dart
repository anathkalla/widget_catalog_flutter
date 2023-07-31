import 'package:flutter/material.dart';
import '../../global/global.dart';
import '../Communication/SnackBar/custom_snackbar.dart';

class CsFloatingActionButton extends StatelessWidget {
  const CsFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
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
