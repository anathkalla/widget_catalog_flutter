import 'package:flutter/material.dart';

class CsCircularProgressIndicator extends StatelessWidget {
  const CsCircularProgressIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 300,
      child: CircularProgressIndicator(),
    );
  }
}
