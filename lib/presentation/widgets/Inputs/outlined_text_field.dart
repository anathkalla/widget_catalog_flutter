import 'package:flutter/material.dart';
import '../../../global/global.dart';

class CsOutlinedTextField extends StatelessWidget {
  const CsOutlinedTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 250,
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          labelText: Stringof.wOutlinedtextField,
        ),
      ),
    );
  }
}
