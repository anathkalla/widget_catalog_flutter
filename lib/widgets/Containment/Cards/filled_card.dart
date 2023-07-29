import 'package:flutter/material.dart';
import '../../../global/global.dart';

class CsFilledCard extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  final double cardElevation;
  final Color cardColor;
  final Widget cardChild;

  const CsFilledCard(
      {super.key,
      this.cardElevation = 0,
      this.cardColor = Colorof.secondaryColor,
      this.cardChild = const Center(
          child: Text(
        'Filled Card',
        style: TextStyle(color: Colorof.textLight),
      )),
      this.cardHeight = 100,
      this.cardWidth = 300});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: cardElevation,
      color: cardColor,
      child: SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: cardChild,
      ),
    );
  }
}
