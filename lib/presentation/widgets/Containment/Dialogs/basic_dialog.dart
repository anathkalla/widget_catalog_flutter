import 'package:flutter/material.dart';

class CsBasicDialog extends StatelessWidget {
  const CsBasicDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => _dialogBuilder(context),
      child: const Text('Open Basic Dialog'),
    );
  }

  Future<void> _dialogBuilder(BuildContext context) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Basic dialog title'),
          content: const Text(
            'A dialog is a type of modal window that\n'
            'appears in front of app content to\n'
            'provide critical information, or prompt\n'
            'for a decision to be made.',
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Disable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: Theme.of(context).textTheme.labelLarge,
              ),
              child: const Text('Enable'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
//     Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
        
//         const SizedBox(height: 10),
//         TextButton(
//           onPressed: () => showDialog<String>(
//             context: context,
//             builder: (BuildContext context) => Dialog.fullscreen(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   const Text('This is a fullscreen dialog.'),
//                   const SizedBox(height: 15),
//                   TextButton(
//                     onPressed: () {
//                       Navigator.pop(context);
//                     },
//                     child: const Text('Close'),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//           child: const Text('Show Fullscreen Dialog'),
//         ),
//       ],
//     );
//   }
// }
