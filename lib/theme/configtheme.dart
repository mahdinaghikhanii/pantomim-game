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
      subtitle1: TextStyle(fontSize: 45, color: kwhite),
      bodyText2: TextStyle(fontSize: 18, color: kwhite),
      subtitle2: TextStyle(
        fontSize: 35,
        color: kwhite,
      ),
      headline1: TextStyle(fontSize: 45, color: kblue),
      headline2: TextStyle(fontSize: 35, color: kblue),
      //heqeline 3 using for tine showing
      headline3: TextStyle(fontSize: 30, color: kwhite),
      headline4: (TextStyle(
        fontSize: 13,
        color: kblack,
      )));

  TextTheme get faPrimaryTextTheme => TextTheme(
        headline3: TextStyle(
            fontSize: 30, color: kwhite, fontFamily: faPrimaryFontFamily),
        headline4: const TextStyle(
          fontSize: 15,
          color: kblack,
          fontFamily: 'IranYekan',
        ),
        bodyText1: TextStyle(
            fontSize: 20, color: kwhite, fontFamily: faPrimaryFontFamily),
        subtitle1: TextStyle(
            fontFamily: faPrimaryFontFamily, fontSize: 45, color: kwhite),
        bodyText2: TextStyle(
            fontSize: 18, color: kwhite, fontFamily: faPrimaryFontFamily),
        subtitle2: TextStyle(
            fontSize: 35, color: kwhite, fontFamily: faPrimaryFontFamily),
        headline1: TextStyle(
            fontFamily: faPrimaryFontFamily, fontSize: 45, color: kblue),
        headline2: TextStyle(
            fontSize: 35, color: kblue, fontFamily: faPrimaryFontFamily),
      );
}
