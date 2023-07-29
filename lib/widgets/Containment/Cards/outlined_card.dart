import 'package:flutter/material.dart';
import '../../../global/global.dart';

class CsOutlinedCard extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  final double cardElevation;
  final Color cardColor;
  final Color cardBorderColor;
  final Widget cardChild;
  final double cardBorderRadius;

  const CsOutlinedCard(
      {super.key,
      this.cardElevation = 0,
      this.cardColor = Colorof.secondaryLightColor,
      this.cardChild = const Center(child: Text('Outlined Card')),
      this.cardHeight = 100,
      this.cardWidth = 300,
      this.cardBorderColor = Colorof.primaryColor,
      this.cardBorderRadius = 12});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: cardElevation,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: cardBorderColor,
        ),
        borderRadius: BorderRadius.all(Radius.circular(cardBorderRadius)),
      ),
      color: cardColor,
      child: SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: cardChild,
      ),
    );
  }
}
