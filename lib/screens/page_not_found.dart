import 'package:flutter/material.dart';

import '../global/global.dart';
import '../widgets/AppBar/app_bar.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CsAppBar(
        title: Stringof.notFound,
      ),
      body: const Center(
        child: Text('Page not found'),
      ),
    );
  }
}
