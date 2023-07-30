import 'package:flutter/material.dart';
import 'package:widget_catalog_flutter/theme/dark_theme.dart';
import 'package:widget_catalog_flutter/theme/light_theme.dart';
import 'router/routes/route_config.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wiki - Flutter Catalog',
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig:
          AppRouter().router, //Router parser for handling routes and navigation
      debugShowCheckedModeBanner: true,
    );
  }
}
