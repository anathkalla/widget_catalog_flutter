import 'package:flutter/material.dart';
import '../../../global/global.dart';

class CsAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CsAppBar({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title, style: TextStyleof.appTitle),
      centerTitle: true,
      backgroundColor: Colorof.primaryColor,
      foregroundColor: Colorof.textLight,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
