import 'package:flutter/material.dart';

import '../../global/global.dart';

class CsTextField extends StatefulWidget {
  const CsTextField({super.key});

  @override
  State<CsTextField> createState() => _CsTextFieldState();
}

class _CsTextFieldState extends State<CsTextField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        controller: _controller,
        onSubmitted: (String value) async {
          await showDialog<void>(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text(Stringof.wTextField),
                content: Text(
                    'You typed "$value", which has length ${value.characters.length}.'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
