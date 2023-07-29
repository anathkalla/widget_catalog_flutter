import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../screens/containment_screen.dart';
import '../../screens/inputs_screen.dart';
import '../../screens/navigation_screen.dart';
import '../../screens/buttons_screen.dart';
import '../../screens/communicarion_screen.dart';
import '../../screens/home_page.dart';
import '../../screens/page_not_found.dart';
import 'routes_constants.dart';

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
      GoRoute(
        path: '/inputs',
        name: RouteConstants.inputsScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: InputsScreen());
        },
      ),
      GoRoute(
        path: '/containment',
        name: RouteConstants.containmentScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: ContainmentWidgets());
        },
      ),
      GoRoute(
        path: '/navigation',
        name: RouteConstants.navigationScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: NavigationScreen());
        },
      ),
      GoRoute(
        path: '/communication',
        name: RouteConstants.communicationScreen,
        pageBuilder: (context, state) {
          return const MaterialPage(child: CommunicationScreen());
        },
      ),
    ],
    errorPageBuilder: (context, state) {
      return const MaterialPage(child: PageNotFound());
    },
  );
}
