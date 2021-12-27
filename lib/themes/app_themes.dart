import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.lightBlueAccent;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      //primary color
      primaryColor: Colors.indigoAccent,

      //Appbar theme
      appBarTheme: const AppBarTheme(color: primary, elevation: 0),

      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary )


      )
  );
}
