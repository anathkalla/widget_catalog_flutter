import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/global/global.dart';
import '../widgets/AppBar/app_bar.dart';
import '../widgets/ListView/list_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CsAppBar(title: Stringof.appTitle),
      body: CsListView(
        context: context,
      ),
    );
  }
}
