import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/global/global.dart';
import '../widgets/Navigation/AppBar/app_bar.dart';
import '../widgets/Containment/ListView/list_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(title: Stringof.appTitle),
      body: Center(
        child: SizedBox(
          width: 400,
          child: CsListView(
            context: context,
          ),
        ),
      ),
    );
  }
}
