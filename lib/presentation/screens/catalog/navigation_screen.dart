import 'package:flutter/material.dart';

import '../../widgets/Navigation/BottomNavigationBar/bottom_navigation_bar.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SizedBox(
      child: CsBottomNavigationBar(),
    ));
  }
}
