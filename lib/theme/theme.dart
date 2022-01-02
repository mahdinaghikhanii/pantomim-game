import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: kblack,
      appBarTheme: const AppBarTheme(color: kblackappbar),
      primaryTextTheme: const TextTheme(
        subtitle1:
            TextStyle(color: kpink, fontWeight: FontWeight.bold, fontSize: 18),
        subtitle2:
            TextStyle(fontFamily: 'StitleEnglish', fontSize: 45, color: kpink),
      ));
  static final lightTheme = ThemeData(
      splashColor: Colors.white10,
      scaffoldBackgroundColor: kwhite,
      appBarTheme: const AppBarTheme(color: kpink),
      primaryTextTheme: const TextTheme(
          bodyText2: TextStyle(fontSize: 14, color: kwhite),
          bodyText1: TextStyle(color: kwhite, fontSize: 20),
          subtitle2: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 28, color: kwhite),
          button: TextStyle(
              color: kblack, fontSize: 21, fontWeight: FontWeight.bold),
          subtitle1: TextStyle(
              color: kwhite, fontWeight: FontWeight.bold, fontSize: 21)));
}
