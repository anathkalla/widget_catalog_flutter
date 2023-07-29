import 'package:flutter/material.dart';

class CsPaddingAll extends StatelessWidget {
  final double all;
  final Widget childWidget;

  const CsPaddingAll({
    super.key,
    this.all = 8.0,
    this.childWidget = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(all), child: childWidget);
  }
}
