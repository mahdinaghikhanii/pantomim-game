// ignore_for_file: unnecessary_null_comparison, prefer_final_fields, duplicate_ignore

import 'package:flutter/material.dart';

class TheThemeOfTheGame extends ChangeNotifier {
  // set DetailGame value
  String _gametheme = "! بزن یریم";

  String get gameTheme => _gametheme;
  void topicgames(String game) {
    _gametheme = game;
    notifyListeners();
  }

  int _numberindexdialogtopic = 0;
  int get getnumberindex => _numberindexdialogtopic;

  void setnumberindex(int number) {
    _numberindexdialogtopic = number;
    notifyListeners();
  }
}
