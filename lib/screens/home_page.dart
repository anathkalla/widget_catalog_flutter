import 'package:flutter/material.dart';
import '../global/global.dart';
import '../widgets/SnackBar/custom_snackbar.dart';
import '../widgets/ListView/list_view.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Stringof.appTitle, style: TextStyleof.appTitle),
        centerTitle: true,
        backgroundColor: Colorof.primaryColor,
        foregroundColor: Colorof.textLight,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colorof.accentColor,
        onPressed: () {
          CustomSnackBar.buildSnackbar(
            context: context,
            message: Stringof.wfab,
          );
        },
        child: const Icon(Icons.add),
      ),
      body: CustonListView(
        context: context,
      ),
    );
  }
}
