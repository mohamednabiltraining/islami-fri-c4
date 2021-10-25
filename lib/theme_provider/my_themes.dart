import 'package:flutter/material.dart';

class MyThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDark => themeMode == ThemeMode.dark;

  void toggleTheme(bool dark) {
    themeMode = dark ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(
            color: MyDarkColors.selectedIconColor,
        ), // set backbutton color here which will reflect in all screens.
      ),
      primaryColor: MyDarkColors.primaryColor,
      progressIndicatorTheme: const ProgressIndicatorThemeData(color: MyDarkColors.primaryColor)
  );

  static final lightTheme = ThemeData();
}

class MyLightColors {
  static final primaryColor = Color.fromRGBO(183, 147, 95, 1.0);
  static final selectedIconColor = Color.fromRGBO(8, 8, 8, 1.0);
  static final white = Color.fromRGBO(255, 255, 255, 1.0);
  static final colorBlack = Color.fromRGBO(5, 5, 5, 1.0);
}

class MyDarkColors {
  static const primaryColor = Color.fromRGBO(20, 26, 46, 1.0);
  static const colorYellow = Color.fromRGBO(250, 204, 29, 1.0);
  static const Color selectedIconColor = Color.fromRGBO(8, 8, 8, 1.0);
  static const white = Color.fromRGBO(255, 255, 255, 1.0);
  static const colorBlack = Color.fromRGBO(5, 5, 5, 1.0);
}
