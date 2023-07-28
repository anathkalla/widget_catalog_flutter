import 'package:flutter/material.dart';
import '../global/global.dart';
import '../widgets/AppBar/app_bar.dart';
import '../widgets/SnackBar/custom_snackbar.dart';
import '../widgets/ListView/list_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CsAppBar(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colorof.accentColor,
        onPressed: () {
          CsSnackBar.buildSnackbar(
            context: context,
            message: Stringof.wfab,
          );
        },
        child: const Icon(Icons.add),
      ),
      body: CsListView(
        context: context,
      ),
    );
  }
}
