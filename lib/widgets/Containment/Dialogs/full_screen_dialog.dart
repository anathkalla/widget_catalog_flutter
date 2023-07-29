import 'package:flutter/material.dart';

class CsFullScreenDialog extends StatelessWidget {
  const CsFullScreenDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => Dialog.fullscreen(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('This is a fullscreen dialog.'),
              const SizedBox(height: 15),
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Close'),
              ),
            ],
          ),
        ),
      ),
      child: const Text('Show Fullscreen Dialog'),
    );
  }
}
