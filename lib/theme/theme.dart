import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(background: Colors.white));

ThemeData darkMode = ThemeData(
    // textTheme: const TextTheme(),
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
        background: Color(0xFF121212), primary: Colors.black));
