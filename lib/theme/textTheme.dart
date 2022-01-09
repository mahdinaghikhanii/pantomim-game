import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

import '../../constants.dart';

class MyThemes2 {
  static const String faPrimaryFontFamily = 'IranYekan';
  final Color splashColor;
  final Color scaffoldBackground;
  final Brightness brightness;

  MyThemes2.light()
      : splashColor = Colors.white10,
        brightness = Brightness.light,
        scaffoldBackground = kwhite;

  ThemeData getTheme(String languageCode) {
    return ThemeData(
      scaffoldBackgroundColor: scaffoldBackground,
      splashColor: splashColor,
      brightness: brightness,
      textTheme: languageCode == 'en' ? enPrimaryTextTheme : faPrimaryTextTheme,
    );
  }

  TextTheme get enPrimaryTextTheme => TextTheme(
      bodyText2: TextStyle(fontSize: 14, color: kwhite),
      bodyText1: TextStyle(color: kwhite, fontSize: 20),
      subtitle2:
          TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: kwhite),
      button:
          TextStyle(color: kblack, fontSize: 81, fontWeight: FontWeight.bold),
      subtitle1:
          TextStyle(color: kwhite, fontWeight: FontWeight.bold, fontSize: 21));
  // ignore: prefer_const_constructors

  TextTheme get faPrimaryTextTheme => TextTheme(
      bodyText2: TextStyle(
        fontSize: 14,
        color: kwhite,
      ),
      headline6: TextStyle(
          fontFamily: faPrimaryFontFamily,
          color: Color(0xFF0D47A1),
          fontSize: 38,
          fontWeight: FontWeight.bold),
      bodyText1: TextStyle(
          color: kwhite, fontSize: 20, fontFamily: faPrimaryFontFamily),
      subtitle2: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 28,
          color: kwhite,
          fontFamily: faPrimaryFontFamily),
      button: TextStyle(
          color: kblack,
          fontSize: 21,
          fontWeight: FontWeight.bold,
          fontFamily: faPrimaryFontFamily),
      subtitle1: TextStyle(
          color: kwhite,
          fontWeight: FontWeight.bold,
          fontSize: 21,
          fontFamily: faPrimaryFontFamily));
}






///// How to play dialog

