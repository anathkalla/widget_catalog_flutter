import 'package:flutter/material.dart';

class CsPaddingAll extends StatelessWidget {
  final double all;
  final Widget childWidget;

  const CsPaddingAll({
    super.key,
    required this.all,
    required this.childWidget,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(all), child: childWidget);
  }
}
