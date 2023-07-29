import 'package:flutter/material.dart';

import '../../global/global.dart';

class CsDivider extends StatelessWidget {
  final double dividerHeight;
  final double dividerThicknes;
  final double dividerIndent;
  final double dividerEndIndent;
  final Color dividerColor;

  const CsDivider({
    super.key,
    this.dividerHeight = 0,
    this.dividerThicknes = 0,
    this.dividerIndent = 0,
    this.dividerEndIndent = 0,
    this.dividerColor = Colorof.textDark,
  });

  @override
  Widget build(BuildContext context) {
    return Divider(
      height: dividerHeight,
      thickness: dividerThicknes,
      indent: dividerIndent,
      endIndent: dividerEndIndent,
      color: dividerColor,
    );
  }
}
