import 'package:flutter/material.dart';

import '../../global/global.dart';

class CsDatePicker extends StatefulWidget {
  const CsDatePicker({Key? key}) : super(key: key);

  @override
  State<CsDatePicker> createState() => _CsDatePickerState();
}

class _CsDatePickerState extends State<CsDatePicker> {
  final _dateC = TextEditingController();

  ///Date
  DateTime selected = DateTime.now();
  DateTime initial = DateTime(2000);
  DateTime last = DateTime(2025);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          SizedBox(
            width: 300,
            child: TextFormField(
              controller: _dateC,
              decoration: const InputDecoration(
                labelText: Stringof.wDatePicker,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
              onPressed: () => displayDatePicker(context),
              child: const Text("Pick Date")),
        ],
      ),
    );
  }

  Future displayDatePicker(BuildContext context) async {
    var date = await showDatePicker(
      context: context,
      initialDate: selected,
      firstDate: initial,
      lastDate: last,
    );

    if (date != null) {
      setState(() {
        _dateC.text = date.toLocal().toString().split(" ")[0];
      });
    }
  }
}
