import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CsNavigationDrawer extends StatelessWidget {
  const CsNavigationDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        NavigationDrawerItem(
          title: "Home",
          onTap: () => context.pushNamed("home"),
        ),
        NavigationDrawerItem(
          title: "Buttons",
          onTap: () => context.pushNamed("buttons"),
        ),
        NavigationDrawerItem(
          title: "Communication",
          onTap: () => context.pushNamed("communication"),
        ),
        NavigationDrawerItem(
          title: "Inputs",
          onTap: () => context.pushNamed("inputs"),
        ),
        NavigationDrawerItem(
          title: "Navigation",
          onTap: () => context.pushNamed("navigation"),
        ),
        NavigationDrawerItem(
          title: "Containment",
          onTap: () => context.pushNamed("containment"),
        ),
      ],
    );
  }
}

class NavigationDrawerItem extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const NavigationDrawerItem(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(title),
        const SizedBox(
          height: 10,
        ),
        ElevatedButton(
          onPressed: onTap,
          child: const Text("Click"),
        )
      ],
    );
  }
}
