import 'package:flutter/material.dart';

class CsOutlinedCard extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  final double cardElevation;
  final Widget cardChild;
  final double cardBorderRadius;

  const CsOutlinedCard(
      {super.key,
      this.cardElevation = 0,
      this.cardChild = const Center(child: Text('Outlined Card')),
      this.cardHeight = 100,
      this.cardWidth = 300,
      this.cardBorderRadius = 12});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: cardElevation,
      shape: RoundedRectangleBorder(
        side: const BorderSide(),
        borderRadius: BorderRadius.all(Radius.circular(cardBorderRadius)),
      ),
      child: SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: cardChild,
      ),
    );
  }
}
