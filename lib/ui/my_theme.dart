import 'package:flutter/material.dart';

class MyTheme {
  static ThemeData light() {
    return ThemeData.light(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.light(
        primary: Colors.blue,
        secondary: Colors.green,
      ),
      textTheme: ThemeData.dark().textTheme.apply(
            fontFamily: 'Poppins',
          ),
    );
  }

  static ThemeData dark() {
    return ThemeData.dark(useMaterial3: true).copyWith(
      colorScheme: const ColorScheme.dark(
        primary: Colors.blue,
        secondary: Colors.green,
      ),
      textTheme: ThemeData.dark().textTheme.apply(
            fontFamily: 'Poppins',
          ),
    );
  }

  static ThemeData activeTheme() {
    return const MaterialApp().themeMode == ThemeMode.dark ? dark() : light();
  }
}
