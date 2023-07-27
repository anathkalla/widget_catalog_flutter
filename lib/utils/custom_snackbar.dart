import 'package:flutter/material.dart';

class CustomSnackBar {
  CustomSnackBar._();
  static buildSnackbar(
      {required BuildContext context,
      required message,
      required Color bgColor,
      required double elevation,
      required double insetMargin}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: bgColor,
        elevation: elevation,
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.all(insetMargin),
      ),
    );
  }
}
