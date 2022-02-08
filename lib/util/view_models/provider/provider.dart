// ignore_for_file: unnecessary_null_comparison
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pantomim/models/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppProvider extends ChangeNotifier {
  //this part and function for number ofteam 1 2 3 or 4
  int _counterOfMatch = 2;
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

//its for titte in detail_game_screans numberRounds in 25 in 1 or 2 or 3
  int _numberofroundsmatch = 1;

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

  // this part for multi language provider
  Locale _currentLocale = new Locale("en");
  Locale get currentLocale => _currentLocale;

  void changeLocale(String _locale) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setString('save', _locale.toString());
    this._currentLocale = new Locale(preferences.getString('save').toString());
    notifyListeners();
  }

  //this part for typeofMatchScreans Input Name Screans

  TextFiledInputNameTeam _nameTeam1 = TextFiledInputNameTeam('Team1');
  TextFiledInputNameTeam _nameTeam2 = TextFiledInputNameTeam('Team2');
  TextFiledInputNameTeam _nameTeam3 = TextFiledInputNameTeam('');
  TextFiledInputNameTeam _nameTeam4 = TextFiledInputNameTeam('');
  TextFiledInputNameTeam get team1 => _nameTeam1;
  TextFiledInputNameTeam get team2 => _nameTeam2;
  TextFiledInputNameTeam get team3 => _nameTeam3;
  TextFiledInputNameTeam get team4 => _nameTeam4;

  bool get isValid {
    if (_nameTeam1.value != null && _nameTeam2.value != null) {
      return true;
    } else {
      //injam ye dialog neshon bede bede bege lotfan name haro vared konid
      return false;
    }
  }

  void changeNameTeams1(String value) {
    if (value.length >= 2) {
      //ye dialog neshon bede bege nahayat 7 tast
      _nameTeam1 = TextFiledInputNameTeam(value);
    } else {
      _nameTeam1 = TextFiledInputNameTeam('');
    }
    notifyListeners();
  }

  void changeNameTeams2(String value) {
    if (value.length > 2) {
      _nameTeam2 = TextFiledInputNameTeam(value);
      //ye dialog neshon bede bege nahayat 7 tast
    } else {
      _nameTeam2 = TextFiledInputNameTeam("");
    }
    notifyListeners();
  }

  void changeNameTeams3(String value) {
    if (value.length > 2) {
      _nameTeam3 = TextFiledInputNameTeam(value);
      //ye dialog neshon bede bege nahayat 7 tast
    } else {
      _nameTeam3 = TextFiledInputNameTeam('');
    }
    notifyListeners();
  }

  void changeNameTeams4(String value) {
    if (value.length > 2) {
      _nameTeam4 = TextFiledInputNameTeam(value);
      //ye dialog neshon bede bege nahayat 7 tast
    } else {
      _nameTeam4 = TextFiledInputNameTeam('');
    }
    notifyListeners();
  }

  bool get visibilityTeam3 {
    if (_nameTeam3.value == '') {
      return false;
    } else {
      return true;
    }
  }

  bool get visibilityTeam4 {
    if (_nameTeam4.value == '') {
      return false;
    } else {
      return true;
    }
  }

  // hintStyle Color TextFor TypeOfMatchScreans

  //this part for Score Team Win or lose

  int _counterOfScoreTeam1 = 0;

  getCounterOfScoreTeam1() => _counterOfScoreTeam1;
  setCounterOfScoreTeam1(int score) => _counterOfScoreTeam1;

  int _counterOfScoreTeam2 = 0;

  getCounterOfScoreTeam2() => _counterOfScoreTeam2;
  setCounterOfScoreTeam2(int score) => _counterOfScoreTeam2;

  int _counterOfScoreTeam3 = 0;

  getCounterOfScoreTeam3() => _counterOfScoreTeam3;
  setCounterOfScoreTeam3(int score) => _counterOfScoreTeam3;

  int _counterOfScoreTeam4 = 0;

  getCounterOfScoreTeam4() => _counterOfScoreTeam4;
  setCounterOfScoreTeam4(int score) => _counterOfScoreTeam4;

  // this part for Icon visibility
  bool get visibilityIconChoice {
    return true;
  }

  //Time Screans Change Text in click

  bool _checkbtn = false;
  bool get checkbtn => _checkbtn;
  void setbtnboolForCheck(bool checkbtn) {
    _checkbtn = checkbtn;
    notifyListeners();
  }

  String _nameBTn = 'start';
  String get namebtn => _nameBTn;
  void changenamebtn(String btnName) {
    _nameBTn = btnName;
    notifyListeners();
  }

  //this part for check team1 or team2 or... win ro lose and set Score and backgroid color in Score Screans

  bool _winorlosebtn = false;

  bool get checkbtnwinlose => _winorlosebtn;

  void checkwinorlosegamebtn(bool check) {
    _winorlosebtn = check;

    notifyListeners();
  }
  //// here code for handel how playing game in innings and showing icon or not showing icon

  void addScoreInTeam() {
    switch (_counterOfScoreTeam1 & _counterOfScoreTeam2) {
      case 0:
        break;
      default:
    }
  }

  bool _visibilityIconinnings = false;

  bool get getcheckvisibilityIcon => _visibilityIconinnings;

  void setVisibilityIconInnings(bool check) {
    _visibilityIconinnings = check;
  }
}
