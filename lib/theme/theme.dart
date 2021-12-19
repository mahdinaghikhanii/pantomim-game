import 'package:flutter/material.dart';

class MyThemes {
  static final darkTheme = ThemeData(scaffoldBackgroundColor: Colors.black);
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      primaryTextTheme: TextTheme(
          button: TextStyle(color: Color(0xFFDC9298)),
          subtitle1: TextStyle(
              color: Color(0xFFDC9298),
              fontWeight: FontWeight.bold,
              fontSize: 18)));
}
