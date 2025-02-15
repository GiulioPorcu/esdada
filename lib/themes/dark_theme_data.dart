import 'package:flutter/material.dart';

class DarkThemeData {
  double fontSizeLarge = 20;
  double fontSizeMedium = 14;
  double fontSizeSmall = 12;

  Color backgroundColor = Colors.grey.shade700;
  Color backgroundColorDim = Colors.grey.shade800;
  Color primary = Colors.blue.shade700;
  Color secondary = Colors.blue.shade500;
  Color headlineColor = Colors.white;
  Color bodyColor = Colors.white;
  Color labelColor = Colors.blue.shade400;
  Color onSurfaceColor = Colors.white;

  getInstance() {
    return ThemeData(
      brightness: Brightness.dark,
      useMaterial3: true,
      colorScheme: ColorScheme.dark(
          surface: backgroundColor,
        surfaceDim: backgroundColorDim,
        onSurface: onSurfaceColor,
        primary: primary,
        secondary: secondary,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: fontSizeLarge,
          color: headlineColor,
        ),
        headlineMedium: TextStyle(
          fontSize: fontSizeMedium,
          color: headlineColor,
        ),
        headlineSmall: TextStyle(
          fontSize: fontSizeSmall,
          color: headlineColor,
        ),
        bodyLarge: TextStyle(
          fontSize: fontSizeLarge,
          color: bodyColor,
        ),
        bodyMedium: TextStyle(
          fontSize: fontSizeMedium,
          color: bodyColor,
        ),
        bodySmall: TextStyle(
          fontSize: fontSizeSmall,
          color: bodyColor,
        ),
        labelLarge: TextStyle(
          fontSize: fontSizeLarge,
          color: labelColor,
        ),
        labelMedium: TextStyle(
          fontSize: fontSizeMedium,
          color: labelColor,
        ),
        labelSmall: TextStyle(
          fontSize: fontSizeSmall,
          color: labelColor,
        ),
      ),
    );
  }
}
