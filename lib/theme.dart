import 'package:flutter/material.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: const Color(0xFFFFFFFF), // Light mode background
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFFE0E0E0), // Light mode AppBar background
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(
          const Color(0xFFFFFFFF)), // Light mode thumb color
      trackColor: WidgetStateProperty.all(
          const Color(0xFFC4C4C4)), // Light mode track color
    ),
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: const Color(0xFF111111), // You need to close this
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(0xFF333333),
    ),
    switchTheme: SwitchThemeData(
      thumbColor: WidgetStateProperty.all(const Color(0xFF000000)),
      trackColor: WidgetStateProperty.all(const Color(0xFF3B95FF)),
    ),
  );

  static String getImage(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.dark) {
      return 'my_first_flutter_app/assets/images/darkmode.png';
    } else {
      return 'my_first_flutter_app/assets/images/lightmode.png';
    }
  }
}
