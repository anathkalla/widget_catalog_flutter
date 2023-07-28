import 'package:flutter/material.dart';
import 'package:wiki_template_app/global/global.dart';
import 'package:wiki_template_app/router/routes/route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wiki - Flutter Catalog',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colorof.primaryColor,
      ),
      routerConfig:
          AppRouter().router, //Router parser for handling routes and navigation
      debugShowCheckedModeBanner: true,
    );
  }
}
