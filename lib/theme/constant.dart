import 'dart:ui';

import 'package:flutter/material.dart';

String faPrimaryFontFamily = 'IranYekan';
const Color kpink = Color(0xFFDC9298);
const Color kwhite = Colors.white;
const Color kblack = Color(0xFF212121);
const Color kred = Color(0xFFE53935);
const Color kpurple = Color(0xFF6A1B9A);
const Color kyellow = Color(0xFFFF9800);
const Color klightgrean = Color(0xFFAFB42B);
const Color kblackappbar = Colors.black;
const Color kblue = Color(0xFF0D47A1);
const Color dialogSettingColor = Colors.white54;
//Text Style
const styleTextForSetting =
    TextStyle(color: kblack, fontWeight: FontWeight.bold, fontSize: 20);
const styleTextForDialogHowToPlay = TextStyle(
  color: kblack,
  fontSize: 15,
);
const styleTextDialogTypeOfMatch =
    TextStyle(color: kblack, fontSize: 17, fontWeight: FontWeight.bold);

const styleTextForScoreTextLost =
    TextStyle(fontSize: 45, color: kred, fontWeight: FontWeight.bold);
const backgroundDefaultScafold2 = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.white, Colors.blue]));

const backgroundDefaultScafold = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.white38, Colors.blue]));
const styleTextInputTextField = TextStyle(color: kwhite, fontSize: 20);

const backgroundDefaultScafoldfalseGameStyle = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.white38, Colors.red]));

//this is style for dialogSetting drowpDown Text
const dropwdownTextDialogSetting = TextStyle(color: kblack, fontSize: 20);

class Constans {
  static const double padding = 20;
  static const double avatarRadius = 45;
  static const double kborderRadios = 20;
}
