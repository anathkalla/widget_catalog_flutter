import 'package:flutter/material.dart';
import 'package:wiki_template_app/global/global.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wiki - Flutter Catalog',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colorof.primaryColor,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}
