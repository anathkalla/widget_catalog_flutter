import 'package:flutter/material.dart';

import '../../../global/global.dart';

class CsOutlinedButton extends StatelessWidget {
  final String btnTitle;
  final VoidCallback onBtnPressed;
  const CsOutlinedButton(
      {super.key,
      this.btnTitle = Stringof.wOutlinedButton,
      required this.onBtnPressed});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
    );
    return OutlinedButton(
      style: style,
      onPressed: onBtnPressed,
      child: Text(btnTitle, style: const TextStyle(color: Colorof.textLight)),
    );
  }
}


// create a reusable elevated button widget in flutter with parameters of title and on pressed and create a default click action to show snackbar?