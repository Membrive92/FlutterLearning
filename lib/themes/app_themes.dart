import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.blueAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //primary color
      primaryColor: Colors.indigoAccent,

      //Appbar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
}
