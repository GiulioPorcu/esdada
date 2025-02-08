import 'package:flutter/material.dart';
import 'package:esdada/themes/theme_provider.dart';
import 'package:provider/provider.dart';
import 'pages/homepage.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ThemeProvider(), child: const MainApplication()));
}

class MainApplication extends StatelessWidget {
  const MainApplication({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeProvider themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'SData Query Tool',
      debugShowCheckedModeBanner: false,
      theme: themeProvider.currentTheme,
      home: const HomePage(),
    );
  }
}