import 'package:flutter/material.dart';

class CsRichTooltip extends StatelessWidget {
  final String toolTipMessage;
  final Widget toolTipChild;

  const CsRichTooltip(
      {super.key,
      this.toolTipMessage = 'This is rich tooltip',
      this.toolTipChild =
          const Text('Tap this text and hold down to show a tooltip.')});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      richMessage: TextSpan(
        text: toolTipMessage,
        children: const <InlineSpan>[
          TextSpan(
            text: 'This is another span of this rich tooltip',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ],
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        gradient: const LinearGradient(colors: <Color>[
          Color.fromARGB(255, 37, 37, 36),
          Color.fromARGB(255, 37, 37, 36)
        ]),
      ),
      child: toolTipChild,
    );
  }
}
