import 'package:flutter/material.dart';
import '../widgets/AppBar/app_bar.dart';
import '../widgets/ListView/list_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(),
      body: CsListView(
        context: context,
      ),
    );
  }
}
