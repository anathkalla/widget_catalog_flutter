import 'package:flutter/material.dart';

class CsSwitch extends StatefulWidget {
  const CsSwitch({super.key});

  @override
  State<CsSwitch> createState() => _CsSwitchState();
}

class _CsSwitchState extends State<CsSwitch> {
  bool switch1 = true;
  bool switch2 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
      MaterialStateProperty.resolveWith<Icon?>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Switch(
          value: switch1,
          onChanged: (bool value) {
            setState(() {
              switch1 = value;
            });
          },
        ),
        Switch(
          thumbIcon: thumbIcon,
          value: switch2,
          onChanged: (bool value) {
            setState(() {
              switch2 = value;
            });
          },
        ),
      ],
    );
  }
}
