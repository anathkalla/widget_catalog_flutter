import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:wiki_template_app/router/routes/routes_constants.dart';
import 'package:wiki_template_app/screens/home_page.dart';

import '../../screens/buttons_screen.dart';
import '../../screens/page_not_found.dart';

class AppRouter {
  GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: RouteConstants.homeScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: MyHomePage());
        },
      ),
      GoRoute(
        path: '/buttons',
        name: RouteConstants.buttonsScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: ButtonsScreen());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: PageNotFound());
    },
  );
}
