import 'package:flutter/material.dart';
import 'package:pantomim/theme/constant.dart';

class ConfigTheme {
  String faPrimaryFontFamily = 'IranYekan';
  final Color scafolldColor;
  final Brightness brightness;

  ConfigTheme.light()
      : scafolldColor = kwhite,
        brightness = Brightness.light;

  ThemeData getTheme(String languageCode) {
    return ThemeData(
      textTheme: languageCode == 'en' ? enPrimaryTextTheme : faPrimaryTextTheme,
      scaffoldBackgroundColor: scafolldColor,
      brightness: brightness,
    );
  }

  TextTheme get enPrimaryTextTheme => const TextTheme(
      bodyText1: TextStyle(fontSize: 20, color: kwhite),
      bodyText2: TextStyle(fontSize: 14, color: kwhite),
      subtitle2: TextStyle(fontSize: 35, color: kblue),
      headline1: TextStyle(fontSize: 45, color: kblue),
      headline2: TextStyle(fontSize: 35, color: kwhite));

  TextTheme get faPrimaryTextTheme => TextTheme(
        bodyText1: TextStyle(fontSize: 20, color: kwhite),
        subtitle1: TextStyle(
            fontFamily: faPrimaryFontFamily, fontSize: 45, color: kwhite),
        bodyText2: TextStyle(fontSize: 18, color: kwhite),
        subtitle2: TextStyle(
            fontSize: 35, color: kwhite, fontFamily: faPrimaryFontFamily),
        headline1: TextStyle(
            fontFamily: faPrimaryFontFamily, fontSize: 45, color: kblue),
        headline2: TextStyle(
            fontSize: 35, color: kblue, fontFamily: faPrimaryFontFamily),
      );
}
