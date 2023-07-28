import 'package:flutter/material.dart';

enum SwitchState { light, dark }

class CsRadioInput extends StatefulWidget {
  const CsRadioInput({super.key});

  @override
  State<CsRadioInput> createState() => _CsRadioInputState();
}

class _CsRadioInputState extends State<CsRadioInput> {
  SwitchState? _character = SwitchState.light;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: ListTile(
            title: const Text('Light'),
            leading: Radio<SwitchState>(
              value: SwitchState.light,
              groupValue: _character,
              onChanged: (SwitchState? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ),
        Expanded(
          child: ListTile(
            title: const Text('Dark'),
            leading: Radio<SwitchState>(
              value: SwitchState.dark,
              groupValue: _character,
              onChanged: (SwitchState? value) {
                setState(() {
                  _character = value;
                });
              },
            ),
          ),
        ),
      ],
    );
  }
}
