import 'package:flutter/material.dart';

class MyTheme with ChangeNotifier {
  bool isDark = false;
  ThemeMode currentTheme() {
    return isDark == true ? ThemeMode.dark : ThemeMode.light;
  }

  void switchTheme() {
    isDark = !isDark;
    notifyListeners();
  }
}

MyTheme currentTheme = MyTheme();
