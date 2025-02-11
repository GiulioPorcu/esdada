import 'package:flutter/material.dart';
import 'package:esdada/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class CToggleThemeButton extends StatelessWidget {
  const CToggleThemeButton({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider provider = Provider.of<ThemeProvider>(context, listen: false);

    return IconButton(
        icon: provider.isLightTheme()
            ? Icon(Icons.dark_mode)
            : Icon(Icons.light_mode),
        onPressed: () {
          provider.toggleTheme();
        });
  }
}
