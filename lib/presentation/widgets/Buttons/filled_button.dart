import 'package:flutter/material.dart';

import '../../../global/global.dart';

class CsFilledButton extends StatelessWidget {
  final String btnTitle;
  final VoidCallback onBtnPressed;

  const CsFilledButton({
    super.key,
    this.btnTitle = Stringof.wFilledButton,
    required this.onBtnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onBtnPressed,
      child: Text(btnTitle),
    );
  }
}
