import 'package:flutter/material.dart';
import 'router/routes/route_config.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';

void main() {
  runApp(const MyApp());
}

const bool isUsingMaterial3 = true;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Wiki - Flutter Catalog',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          useMaterial3: isUsingMaterial3, colorScheme: lightColorScheme),
      darkTheme: ThemeData(
          useMaterial3: isUsingMaterial3, colorScheme: darkColorScheme),
      routerConfig:
          AppRouter().router, //Router parser for handling routes and navigation
      debugShowCheckedModeBanner: true,
    );
  }
}

// what is launch.json in visual studio code?