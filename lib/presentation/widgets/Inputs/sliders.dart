import 'package:flutter/material.dart';

class CsSlider extends StatefulWidget {
  const CsSlider({super.key});

  @override
  State<CsSlider> createState() => _CsSliderState();
}

class _CsSliderState extends State<CsSlider> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Slider(
        value: _currentSliderValue,
        max: 100,
        divisions: 5,
        label: _currentSliderValue.round().toString(),
        onChanged: (double value) {
          setState(() {
            _currentSliderValue = value;
          });
        },
      ),
    );
  }
}
