import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/global/global.dart';
import 'router/routes/route_config.dart';
import 'theme/dark_theme.dart';
import 'theme/light_theme.dart';

class WikiFlutterWidgetCatalog extends StatefulWidget {
  const WikiFlutterWidgetCatalog({super.key});

  @override
  State<WikiFlutterWidgetCatalog> createState() =>
      _WikiFlutterWidgetCatalogState();
}

class _WikiFlutterWidgetCatalogState extends State<WikiFlutterWidgetCatalog> {
  @override
  Widget build(BuildContext context) {
    const bool isUsingMaterial3 = true;
    return MaterialApp.router(
      title: Stringof.appTitle,
      themeMode: ThemeMode.system,
      theme: ThemeData(
          textTheme:
              GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
          useMaterial3: isUsingMaterial3,
          colorScheme: lightColorScheme),
      darkTheme: ThemeData(
          useMaterial3: isUsingMaterial3, colorScheme: darkColorScheme),
      routerConfig:
          AppRouter().router, //Router parser for handling routes and navigation
      debugShowCheckedModeBanner: true,
    );
  }
}
