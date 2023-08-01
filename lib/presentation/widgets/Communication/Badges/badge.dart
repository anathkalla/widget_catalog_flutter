import 'package:flutter/material.dart';

import '../../../widgets/Buttons/elevated_button.dart';

class CsBadge extends StatelessWidget {
  const CsBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return const Badge(child: CsElevatedButton());
  }
}
