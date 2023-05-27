import 'package:flutter/material.dart';

class ThemeService extends ChangeNotifier {
  bool isDarkModeOn = true;

  ThemeMode getTheme() {
    return isDarkModeOn ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    isDarkModeOn = !isDarkModeOn;
    notifyListeners();
  }
}
