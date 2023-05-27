import 'package:advisor/application/core/services/theme_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AdviserAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AdviserAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final themeData = Theme.of(context);

    return AppBar(
      title: Text(
        'Adviser',
        style: themeData.textTheme.displayLarge,
      ),
      centerTitle: true,
      actions: [
        Switch(
            value: Provider.of<ThemeService>(context).isDarkModeOn,
            onChanged: (_) {
              Provider.of<ThemeService>(context, listen: false).switchTheme();
            }),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
