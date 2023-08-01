import 'package:flutter/material.dart';

class CsLinearProgressIndicator extends StatelessWidget {
  const CsLinearProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: LinearProgressIndicator(),
    );
  }
}
