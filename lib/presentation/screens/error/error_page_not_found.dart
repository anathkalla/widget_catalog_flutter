import 'package:flutter/material.dart';

import '../../../global/global.dart';
import '../../widgets/Navigation/AppBar/app_bar.dart';
import 'view_screen.dart';

class ErrorPageNotFound extends StatelessWidget {
  const ErrorPageNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CsAppBar(
          title: Stringof.notFound,
        ),
        body: ViewFile());
  }
}
