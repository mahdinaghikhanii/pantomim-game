import 'package:flutter/material.dart';
import 'package:pantomim/generated/l10n.dart';

class ModelTypeOfMatch extends ChangeNotifier {
  //this part and function for number ofteam 1 2 3 or 4
  int _counterOfMatch = 3;
  getCounterMatch() => _counterOfMatch;
  setConunterMatch(int counter) => _counterOfMatch;

  void increment() {
    if (_counterOfMatch > 3) {
      _counterOfMatch;
    } else {
      _counterOfMatch++;
    }
    notifyListeners();
  }

  void lowoff() {
    if (_counterOfMatch == 2) {
      _counterOfMatch;
    } else {
      _counterOfMatch--;
    }
    notifyListeners();
  }

//this part and function for time game
  int _timeCounter = 0;
  getTimeForMatch() => _timeCounter;
  setTimeForMatch(int time) => _timeCounter;
  void incermentstring() {
    if (_timeCounter == 8) {
      _timeCounter;
    } else {
      _timeCounter++;
    }
    notifyListeners();
  }

  void lowoffstring() {
    if (_timeCounter == 0) {
      _timeCounter;
    } else {
      _timeCounter--;
    }
    notifyListeners();
  }

  //this part and function
  int _numberofrounds = 3;

  getNumberOfRounds() => _numberofrounds;
  setNumberOfRounds(int numberRounds) => _numberofrounds;

  void incermentnumberofrounds() {
    if (_numberofrounds == 25) {
      _numberofrounds;
    } else {
      _numberofrounds++;
    }
    notifyListeners();
  }

  void lowoffnumberofrounds() {
    if (_numberofrounds == 3) {
      _numberofrounds;
    } else {
      _numberofrounds--;
    }
    notifyListeners();
  }
}
