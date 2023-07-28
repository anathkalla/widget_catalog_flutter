import 'package:flutter/material.dart';
import '../../data/mock_list_items.dart';
import '../../global/global.dart';
import '../Communication/SnackBar/custom_snackbar.dart';

class CsToggleButton extends StatefulWidget {
  const CsToggleButton({super.key});

  @override
  State<CsToggleButton> createState() => _CsToggleButtonState();
}

class _CsToggleButtonState extends State<CsToggleButton> {
  final List<bool> _selectedToggleList = <bool>[false, false, true];
  bool vertical = false;

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      direction: vertical ? Axis.vertical : Axis.horizontal,
      onPressed: (int index) {
        CsSnackBar.buildSnackbar(
          context: context,
          message: Stringof.wToggleButton,
        );
        setState(() {
          // The button that is tapped is set to true, and the others to false.
          for (int i = 0; i < _selectedToggleList.length; i++) {
            _selectedToggleList[i] = i == index;
          }
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      selectedBorderColor: Colorof.primaryColor,
      selectedColor: Colors.white,
      fillColor: Colorof.primaryColor,
      color: Colorof.primaryColor,
      isSelected: _selectedToggleList,
      children: iconsList,
    );
  }
}
