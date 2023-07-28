import 'package:flutter/material.dart';

import '../global/global.dart';
import '../widgets/Containment/AppBar/app_bar.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CsAppBar(
        title: Stringof.notFound,
      ),
      body: Center(
        child: Text('Page not found'),
      ),
    );
  }
}
