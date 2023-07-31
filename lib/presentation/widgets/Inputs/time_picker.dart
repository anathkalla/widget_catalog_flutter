import 'package:flutter/material.dart';

import '../../../global/global.dart';

class CsTimePicker extends StatefulWidget {
  const CsTimePicker({Key? key}) : super(key: key);

  @override
  State<CsTimePicker> createState() => _CsTimePickerState();
}

class _CsTimePickerState extends State<CsTimePicker> {
  final _timeC = TextEditingController();

  ///Time
  TimeOfDay timeOfDay = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          SizedBox(
            width: 300,
            child: TextFormField(
              controller: _timeC,
              decoration: const InputDecoration(
                  labelText: Stringof.wTimePicker,
                  border: OutlineInputBorder()),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          ElevatedButton(
              onPressed: () => displayTimePicker(context),
              child: const Text("Pick Time")),
        ],
      ),
    );
  }

  Future displayTimePicker(BuildContext context) async {
    var time = await showTimePicker(context: context, initialTime: timeOfDay);

    if (time != null) {
      setState(() {
        _timeC.text = "${time.hour}:${time.minute}";
      });
    }
  }
}
