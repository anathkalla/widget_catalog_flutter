import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/presentation/widgets/Navigation/AppBar/app_bar.dart';

<<<<<<< Updated upstream:lib/screens/navigation_screen.dart
import '../widgets/Navigation/BottomNavigationBar/bottom_navigation_bar.dart';
=======
import '../../widgets/Navigation/BottomNavigationBar/bottom_navigation_bar.dart';
import '../../widgets/Navigation/NavigationDrawer/navigation_drawer.dart';
>>>>>>> Stashed changes:lib/presentation/screens/catalog/navigation_screen.dart

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
