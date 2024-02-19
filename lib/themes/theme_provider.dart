import 'package:flutter/material.dart';
import 'package:sangeet_flutter/themes/dark_mode.dart';
import 'package:sangeet_flutter/themes/light_mode.dart';

// in order to switch between light and dark modes
class ThemeProvider extends ChangeNotifier {
  // initially making light mode
  ThemeData _themeData = lightMode;

  // get theme
  ThemeData get themeData => _themeData;

  // is dark mode
  bool get isDarkMode => _themeData == darkMode;

  // set theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;

    // will update the ui
    notifyListeners();
  }

  // toggle theme
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
