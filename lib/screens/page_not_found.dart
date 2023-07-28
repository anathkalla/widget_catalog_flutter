import 'package:flutter/material.dart';
import 'package:wiki_template_app/widgets/AppBar/app_bar.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CsAppBar(),
      body: Center(
        child: Text('Page not found'),
      ),
    );
  }
}
