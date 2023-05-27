import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  /// Colors

  // light
  static final Color _lightPrimayColor = Colors.blueGrey.shade50;
  static final Color _lightPrimayVariantColor = Colors.blueGrey.shade800;
  static final Color _lightOnPrimayColor = Colors.blueGrey.shade200;
  static const Color _lightTextColorPrimary = Colors.black;
  static const Color _lightAppBarColor = Colors.blue;

  // dark
  static final Color _darkPrimayColor = Colors.blueGrey.shade900;
  static const Color _darkPrimayVariantColor = Colors.black;
  static final Color _darkOnPrimayColor = Colors.blueGrey.shade300;
  static const Color _darkTextColorPrimary = Colors.white;
  static final Color _darkAppBarColor = Colors.blueGrey.shade800;

  static const _iconColor = Colors.white;
  static final _accentColor = Color.fromRGBO(74, 217, 217, 1);

  /// Text

  // light
  static const TextStyle _lightHeadingText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: 'Rubik',
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle _lightBodyText = TextStyle(
    color: _lightTextColorPrimary,
    fontFamily: 'Rubik',
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
  );

  static const TextTheme _lightTextTheme = TextTheme(
    displayLarge: _lightHeadingText,
    bodyLarge: _lightBodyText,
  );

  //dark
  static final TextStyle _darkHeadingText = _lightHeadingText.copyWith(
    color: _darkTextColorPrimary,
  );

  static final TextStyle _darkBodyText = _lightBodyText.copyWith(
    color: _darkTextColorPrimary,
  );

  static final TextTheme _darkTextTheme = TextTheme(
    displayLarge: _darkHeadingText,
    bodyLarge: _darkBodyText,
  );

  /// Theme

  // light
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimayColor,
    appBarTheme: const AppBarTheme(
      color: _lightAppBarColor,
      iconTheme: IconThemeData(
        color: _iconColor,
      ),
    ),
    bottomAppBarTheme: const BottomAppBarTheme(
      color: _lightAppBarColor,
    ),
    colorScheme: ColorScheme.light(
      primary: _lightPrimayColor,
      onPrimary: _lightOnPrimayColor,
      secondary: _accentColor,
      primaryContainer: _lightPrimayVariantColor,
    ),
    textTheme: _lightTextTheme,
  );

  // dark
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkPrimayColor,
    appBarTheme: AppBarTheme(
      color: _darkAppBarColor,
      iconTheme: const IconThemeData(
        color: _iconColor,
      ),
    ),
    bottomAppBarTheme: BottomAppBarTheme(
      color: _darkAppBarColor,
    ),
    colorScheme: ColorScheme.light(
      primary: _darkPrimayColor,
      onPrimary: _darkOnPrimayColor,
      secondary: _accentColor,
      primaryContainer: _darkPrimayVariantColor,
    ),
    textTheme: _darkTextTheme,
  );

  static final ThemeData light = ThemeData(
    useMaterial3: true,
  );

  static final ThemeData dark = ThemeData(
    useMaterial3: true,
  );
}
