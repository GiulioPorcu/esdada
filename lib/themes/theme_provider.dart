import 'package:flutter/material.dart';
import 'theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _actualTheme = lightThemeData;

  ThemeData get currentTheme => _actualTheme;
  set currentTheme(ThemeData themeData) {
    _actualTheme = themeData;
    notifyListeners();
  }

  bool isLightTheme() {
    return _actualTheme == lightThemeData;
  }

  void toggleTheme() {
    if (isLightTheme()) {
      currentTheme = darkThemeData;
    } else {
      currentTheme = lightThemeData;
    }
  }
}
