import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  static bool _isDarkModeOn = true;

  ThemeMode getTheme() {
    return _isDarkModeOn ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    _isDarkModeOn = !_isDarkModeOn;
    notifyListeners();
  }
}
