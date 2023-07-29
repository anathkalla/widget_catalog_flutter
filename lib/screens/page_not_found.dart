import 'package:flutter/material.dart';

import '../global/global.dart';
import '../widgets/Containment/AppBar/app_bar.dart';
import 'view_screen.dart';

class PageNotFound extends StatelessWidget {
  const PageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CsAppBar(
          title: Stringof.notFound,
        ),
        body: ViewFile());
  }
}
