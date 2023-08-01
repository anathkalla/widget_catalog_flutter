import 'package:flutter/material.dart';

import '../../widgets/Navigation/BottomNavigationBar/bottom_navigation_bar.dart';
import '../presentation/widgets/Navigation/NavigationDrawer/navigation_drawer.dart';
import '../widgets/Navigation/AppBar/app_bar.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CsAppBar(title: "AppBar"),
        drawer: CsNavigationDrawer(),
        body: CsBottomNavigationBar());
  }
}
