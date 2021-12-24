import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

class MyThemes {
  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: kblack,
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
          subtitle2: TextStyle(
              fontFamily: 'StitleEnglish', fontSize: 45, color: kpink),
          button: TextStyle(color: kpink),
          subtitle1: TextStyle(
              color: kpink, fontWeight: FontWeight.bold, fontSize: 18)));
}
