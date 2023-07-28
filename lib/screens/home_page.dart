import 'package:flutter/material.dart';
import '../global/global.dart';
import '../utils/custom_snackbar.dart';
import '../widgets/list_view.dart';

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
            bgColor: Colorof.secondaryColor,
            message: Stringof.wfab,
            elevation: Sizeof.sSnackBarElevation,
            insetMargin: Sizeof.sSnackBarMargin,
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
