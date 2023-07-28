import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/global/colors.dart';

class CsCheckbox extends StatefulWidget {
  const CsCheckbox({super.key});

  @override
  State<CsCheckbox> createState() => _CsCheckboxState();
}

class _CsCheckboxState extends State<CsCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colorof.primaryColor;
      }
      return Colorof.secondaryColor;
    }

    return Checkbox(
      checkColor: Colors.white,
      fillColor: MaterialStateProperty.resolveWith(getColor),
      value: isChecked,
      onChanged: (bool? value) {
        setState(() {
          isChecked = value!;
        });
      },
    );
  }
}
