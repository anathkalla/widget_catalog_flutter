import 'package:flutter/material.dart';

import '../../global/global.dart';

class CsDisabledButton extends StatelessWidget {
  const CsDisabledButton({super.key});

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      textStyle: const TextStyle(fontSize: 20),
      minimumSize: const Size(100, 50),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2)),
      ),
    );
    return ElevatedButton(
      style: style,
      onPressed: null,
      child: const Text(Stringof.wDisabledButton),
    );
  }
}
