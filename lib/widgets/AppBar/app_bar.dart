import 'package:flutter/material.dart';
import '../../global/global.dart';

class CsAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CsAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(Stringof.appTitle, style: TextStyleof.appTitle),
      centerTitle: true,
      backgroundColor: Colorof.primaryColor,
      foregroundColor: Colorof.textLight,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
