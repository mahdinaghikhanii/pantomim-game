import 'package:flutter/material.dart';

class ModelTypeOfMatch extends ChangeNotifier {
  int _numberOfMatch = 3;
  int get number => _numberOfMatch;
  setConunter(int counter) => _numberOfMatch = counter;

  String _team1 = '';
  String get nameTeam => _team1;

  void increment() {
    _numberOfMatch++;
    notifyListeners();
  }

  void lowoff() {
    _numberOfMatch--;
    notifyListeners();
  }

  void changeName(String val) {
    _team1 = val;
    notifyListeners();
  }
}
