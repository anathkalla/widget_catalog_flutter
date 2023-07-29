import 'package:flutter/material.dart';

class CsElevatedCard extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  final Widget childWidget;

  const CsElevatedCard({
    super.key,
    this.cardHeight = 300,
    this.cardWidth = 100,
    this.childWidget = const Center(child: Text('Elevated Card')),
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: childWidget,
      ),
    );
  }
}
