import 'package:flutter/material.dart';

class DarkThemeData {
  double fontSizeLarge = 20;
  double fontSizeMedium = 14;
  double fontSizeSmall = 12;

  getInstance() {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
        surface: Colors.grey.shade900,
        primary: Colors.deepOrange.shade900,
        secondary: Colors.deepOrange.shade600,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: fontSizeLarge,
          color: Colors.black,
        ),
        headlineMedium: TextStyle(
          fontSize: fontSizeMedium,
          color: Colors.black,
        ),
        headlineSmall: TextStyle(
          fontSize: fontSizeSmall,
          color: Colors.black,
        ),
        labelSmall: TextStyle(
          fontSize: fontSizeSmall,
          color: Colors.orange,
        ),
      ),
    );
  }
}
