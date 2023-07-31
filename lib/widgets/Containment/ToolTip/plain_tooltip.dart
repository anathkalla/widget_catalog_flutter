import 'package:flutter/material.dart';

class CsPlainTooltip extends StatelessWidget {
  final String toolTipMessage;
  final Widget toolTipChild;

  const CsPlainTooltip(
      {super.key,
      this.toolTipMessage = 'This is a sample Tooltip',
      this.toolTipChild =
          const Text('Tap this text and hold down to show a tooltip.')});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: toolTipMessage,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(colors: <Color>[
          Color.fromARGB(255, 37, 37, 36),
          Color.fromARGB(255, 37, 37, 36)
        ]),
      ),
      height: 10,
      padding: const EdgeInsets.all(8.0),
      preferBelow: false,
      showDuration: const Duration(seconds: 2),
      waitDuration: const Duration(seconds: 1),
      child: toolTipChild,
    );
  }
}
