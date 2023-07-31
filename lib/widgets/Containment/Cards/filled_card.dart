import 'package:flutter/material.dart';

class CsFilledCard extends StatelessWidget {
  final double cardHeight;
  final double cardWidth;
  final double cardElevation;
  final Widget cardChild;

  const CsFilledCard(
      {super.key,
      this.cardElevation = 0,
      this.cardChild = const Center(
          child: Text(
        'Filled Card',
      )),
      this.cardHeight = 100,
      this.cardWidth = 300});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: cardElevation,
      child: SizedBox(
        width: cardWidth,
        height: cardHeight,
        child: cardChild,
      ),
    );
  }
}
