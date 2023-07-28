import 'package:flutter/material.dart';
import '../../global/colors.dart';

class CsSnackBar {
  CsSnackBar._();

  static buildSnackbar({required BuildContext context, required message}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colorof.secondaryColor,
        elevation: 5.0,
        margin: const EdgeInsets.all(0),
        duration: const Duration(milliseconds: 300),
        behavior: SnackBarBehavior.floating,
      ),
    );
  }
}
