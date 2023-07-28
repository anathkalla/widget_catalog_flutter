import 'package:flutter/material.dart';
import '../global/global.dart';
import '../list_view_items.dart';
import '../utils/custom_snackbar.dart';

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});
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
            elevation: 5.0,
            insetMargin: 20.0,
          );
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: widgetsList.length,
        // reverse: false,
        // itemExtent: 100,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return WidgetListItem(
            index: index,
            listTitle: widgetsList[index],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 20,
          );
        },
      ),
    );
  }
}
