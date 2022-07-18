import 'package:flutter/material.dart';
import 'package:pantomim/models/category.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TeamProvider extends ChangeNotifier {
  // set numberof Thms
  int _numberOfTeams = 2;
  getNumberOfTeams() => _numberOfTeams;
  setNumberOfTeams(int counter) => _numberOfTeams;

  void incrementNumberOfTeams() {
    if (_numberOfTeams > 3) {
      _numberOfTeams;
    } else {
      _numberOfTeams++;
    }
    notifyListeners();
  }

  void lowoffNumberOfTeams() {
    if (_numberOfTeams == 2) {
      _numberOfTeams;
    } else {
      _numberOfTeams--;
    }
    notifyListeners();
  }

//this part and function for time game
  int _gametime = 0;
  getTimeForMatch() => _gametime;
  setTimeForMatch(int time) => _gametime;
  void incermentGameTime() {
    if (_gametime == 8) {
      _gametime;
    } else {
      _gametime++;
    }
    notifyListeners();
  }

  void lowoffGameTime() {
    if (_gametime == 0) {
      _gametime;
    } else {
      _gametime--;
    }
    notifyListeners();
  }

//its for titte in detail_game_screans numberRounds in 25 in 1 or 2 or 3
  int _numberOfRoundsOfGameTitle = 1;
  void incrementNumberOfRoundsOfGame() {
    _numberOfRoundsOfGameTitle++;
    notifyListeners();
  }

  gettitleNumberOfRoundsOfGame() => _numberOfRoundsOfGameTitle;
  settitleNumberOfRoundsOfGame(int numberFortitle) =>
      _numberOfRoundsOfGameTitle;

  //this part and function Rounds choice in detail and type of match
  int _numberofRoundsOfGame = 3;

  getNumberOfRounds() => _numberofRoundsOfGame;
  setNumberOfRounds(int numberRounds) => _numberofRoundsOfGame;

  void incermentnumberofrounds() {
    if (_numberofRoundsOfGame == 25) {
      _numberofRoundsOfGame;
    } else {
      _numberofRoundsOfGame++;
    }
    notifyListeners();
  }

  void lowoffnumberofrounds() {
    if (_numberofRoundsOfGame == 3) {
      _numberofRoundsOfGame;
    } else {
      _numberofRoundsOfGame--;
    }
    notifyListeners();
  }

  // this part for multi language provider

  //this part for typeofMatchScreans Input Name Screans

  TextFiledInputNameTeam _textFiledInputNameTeam1 =
      TextFiledInputNameTeam("تیم ۱");
  TextFiledInputNameTeam _textFiledInputNameTeam2 =
      TextFiledInputNameTeam('تیم ۲');
  TextFiledInputNameTeam _textFiledInputNameTeam3 =
      TextFiledInputNameTeam('تیم ۳');
  TextFiledInputNameTeam _textFiledInputNameTeam4 =
      TextFiledInputNameTeam('تیم ۴');

  TextFiledInputNameTeam get gettextFiledInputNameTeam1 =>
      _textFiledInputNameTeam1;
  TextFiledInputNameTeam get gettextFiledInputNameTeam2 =>
      _textFiledInputNameTeam2;
  TextFiledInputNameTeam get gettextFiledInputNameTeam3 =>
      _textFiledInputNameTeam3;
  TextFiledInputNameTeam get gettextFiledInputNameTeam4 =>
      _textFiledInputNameTeam4;

  void changeNameTeams1(String value) {
    if (value.length >= 2) {
      _textFiledInputNameTeam1 = TextFiledInputNameTeam(value);
      _nameTeam1 = value;
    } else {
      _textFiledInputNameTeam1 = TextFiledInputNameTeam('');
      _nameTeam1 = TextFiledInputNameTeam("").toString();
    }
    notifyListeners();
  }

  void changeNameTeams2(String value) {
    if (value.length > 2) {
      _nameTeam2 = value;
    } else {
      _textFiledInputNameTeam2 = TextFiledInputNameTeam("");
      _nameTeam2 = TextFiledInputNameTeam("").toString();
    }
    notifyListeners();
  }

  void changeNameTeams3(String value) {
    if (value.length > 2) {
      _nameTeam3 = TextFiledInputNameTeam(value).toString();
      _nameTeam3 = value;
    } else {
      _textFiledInputNameTeam3 = TextFiledInputNameTeam('');
      _nameTeam3 = TextFiledInputNameTeam("").toString();
    }
    notifyListeners();
  }

  void changeNameTeams4(String value) {
    if (value.length > 2) {
      _textFiledInputNameTeam4 = TextFiledInputNameTeam(value);
      _nameTeam4 = value;
    } else {
      _textFiledInputNameTeam4 = TextFiledInputNameTeam('');
      _nameTeam4 = TextFiledInputNameTeam("").toString();
    }
    notifyListeners();
  }

  bool get visibilityTeam3 {
    if (_numberOfTeams > 2) {
      return true;
    } else {
      return false;
    }
  }

  bool get visibilityTeam4 {
    if (_numberOfTeams > 3) {
      return true;
    } else {
      return false;
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

  // ignore: prefer_final_fields
  int _counterOfScoreTeam3 = 0;

  getCounterOfScoreTeam3() => _counterOfScoreTeam3;
  setCounterOfScoreTeam3(int score) => _counterOfScoreTeam3;

  // ignore: prefer_final_fields
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

  // this part for bool see icon or not visibility Icon

  bool _visibilirtIconTeam1 = false;
  bool _visibilirtIconTeam2 = false;
  bool _visibilirtIconTeam3 = false;
  bool _visibilirtIconTeam4 = false;

  bool get visibilityTeam1Icon => _visibilirtIconTeam1;
  bool get visibilityTeam2Icon => _visibilirtIconTeam2;
  bool get visibilityTeam3Icon => _visibilirtIconTeam3;
  bool get visibilityTeam4Icon => _visibilirtIconTeam4;

  bool _winorlosebtn = false;
  bool get checkbtnwinlose => _winorlosebtn;

  void checkwinorlosegamebtn(bool check) {
    _winorlosebtn = check;
    notifyListeners();
  }

  //// here code for handel how playing game in innings and showing icon or not showing icon
  int _innigns = -1;
  void incrementinnigns() {
    _innigns++;
    notifyListeners();
  }

  int get getcheckforInnigns => _innigns;

  void setaddcheckforInnigns() {
    if (_winorlosebtn == true) {
      _innigns++;
    } else {
      _innigns++;
    }

    if (_innigns == _numberOfTeams) {
      if (_numberOfRoundsOfGameTitle == _numberofRoundsOfGame) {
        _innigns++;
        _innigns++;

        notifyListeners();
        if (_innigns == _numberOfTeams) {
          _innigns++;
        }
      } else {
        _innigns = 0;
        _numberOfRoundsOfGameTitle++;
      }
    } else {
      _innigns;
    }
    setvisibilityIcon();
    notifyListeners();
  }

  void reasetvalue() {
    _counterOfScoreTeam1 = 0;
    _counterOfScoreTeam2 = 0;
    _counterOfScoreTeam3 = 0;
    _counterOfScoreTeam4 = 0;
    _numberOfTeams = 2;

    _numberOfRoundsOfGameTitle = 1;

    _innigns = -1;
  }

// this function for set visibility Icon in detailGame for Screans
  void setvisibilityIcon() {
    switch (_innigns) {
      case 0:
        _visibilirtIconTeam1 = true;
        _visibilirtIconTeam2 = false;
        _visibilirtIconTeam3 = false;
        _visibilirtIconTeam4 = false;
        break;
      case 1:
        _visibilirtIconTeam1 = false;
        _visibilirtIconTeam2 = true;
        _visibilirtIconTeam3 = false;
        _visibilirtIconTeam4 = false;

        break;
      case 2:
        _visibilirtIconTeam1 = false;
        _visibilirtIconTeam2 = false;
        _visibilirtIconTeam3 = true;
        _visibilirtIconTeam4 = false;
        break;
      case 3:
        _visibilirtIconTeam1 = false;
        _visibilirtIconTeam2 = false;
        _visibilirtIconTeam3 = false;
        _visibilirtIconTeam4 = true;
        break;
    }
    notifyListeners();
  }

  //this function for Score Team

  void setScoreForAllTeam() {
    if (_visibilirtIconTeam1 == true) {
      if (_winorlosebtn == true) {
        _counterOfScoreTeam1++;
        _counterOfScoreTeam1++;
      } else {
        _counterOfScoreTeam1;
      }
    }

    if (_visibilirtIconTeam2 == true) {
      if (_winorlosebtn == true) {
        _counterOfScoreTeam2++;
        _counterOfScoreTeam2++;
      } else {
        _counterOfScoreTeam2;
      }
    }

    if (_visibilirtIconTeam3 == true) {
      if (_winorlosebtn == true) {
        _counterOfScoreTeam3++;
        _counterOfScoreTeam3++;
      } else {
        _counterOfScoreTeam3;
      }
    }
    if (_visibilirtIconTeam4 == true) {
      if (_winorlosebtn == true) {
        _counterOfScoreTeam4++;
        _counterOfScoreTeam4++;
      } else {
        _counterOfScoreTeam4;
      }
    }
    notifyListeners();
  }

  seeGroupNameTeam() {
    if (_visibilirtIconTeam1 == true) {
      return _textFiledInputNameTeam1.value;
    }
    if (_visibilirtIconTeam2 == true) {
      return _textFiledInputNameTeam2.value;
    }
    if (_visibilirtIconTeam3 == true) {
      return _textFiledInputNameTeam3.value;
    }
    if (_visibilirtIconTeam4 == true) {
      return _textFiledInputNameTeam4.value;
    }
    notifyListeners();
  }

  int _wrong = 0;
  int get getwrongScore => _wrong;
  void setwrontScore(int wrongScore) {
    _wrong = wrongScore;
    notifyListeners();
  }

  void subtractioScore() {
    if (_wrong > 2) {
      _wrong = 0;
    } else {
      _wrong++;
      notifyListeners();
    }

    if (_wrong == 2) {
      if (_visibilirtIconTeam1 == true) {
        _counterOfScoreTeam1--;
      }
      if (_visibilirtIconTeam2 == true) {
        _counterOfScoreTeam2--;
      }
      if (_visibilirtIconTeam3 == true) {
        _counterOfScoreTeam3--;
      }
      if (_visibilirtIconTeam4 == true) {
        _counterOfScoreTeam4--;
      }
    }
    notifyListeners();
  }

  bool _showIconbackGame = false;
  bool get backLastGame => _showIconbackGame;

  List<String> _items = [];
  List get seeAllItems => _items;

  void backGameIconShow(bool backGame) async {
    final perfs = await SharedPreferences.getInstance();
    _showIconbackGame = backGame;
    await perfs.setBool("ShowIconBackGame", backGame);
    notifyListeners();
  }

  void saveAllTeamInformationTeam(
      String? nameTeam1,
      String? nameTeam2,
      String? nameTeam3,
      String? nameTeam4,
      int? numberRounds,
      int? numberofTeam) async {
    final perfs = await SharedPreferences.getInstance();
    await perfs.setString("name-team1", nameTeam1 ?? "");
    await perfs.setString("name-team2", nameTeam2 ?? "");
    await perfs.setString("name-team3", nameTeam3 ?? "");
    await perfs.setString("name-team4", nameTeam4 ?? "");
    await perfs.setInt('number-ofTeam', numberofTeam ?? 0);
    await perfs.setInt('number-Rounds', numberRounds ?? 0);

    notifyListeners();
  }

  String _nameTeam1 = "تیم 1";
  String _nameTeam2 = "تیم 2";
  String _nameTeam3 = "تیم 3";
  String _nameTeam4 = "تیم 4";

  String get getNameTeam1 => _nameTeam1;
  String get getNameTeam2 => _nameTeam2;
  String get getNameTeam3 => _nameTeam3;
  String get getNameTeam4 => _nameTeam4;

  void saveAllTeamInformationTeam2() async {
    final perfs = await SharedPreferences.getInstance();
    await perfs.setString("name-team1", _nameTeam1);
    await perfs.setString("name-team2", _nameTeam2);
    await perfs.setString("name-team3", _nameTeam3);
    await perfs.setString("name-team4", _nameTeam4);

    await perfs.setInt('number-of-team', _numberOfTeams);
    await perfs.setInt("numberofRoundsOfGame", _numberofRoundsOfGame);
    await perfs.setInt('numberOfRoundsGameTitle', _numberOfRoundsOfGameTitle);

    notifyListeners();
  }

  getShowIconbackGame() async {
    final perfs = await SharedPreferences.getInstance();
    _items = perfs.getStringList("information-team")!;
    _showIconbackGame = perfs.getBool('ShowIconBackGame') ?? false;

    _nameTeam1 = perfs.getString("name-team1") ?? "";
    _nameTeam2 = perfs.getString("name-team2") ?? "";
    _nameTeam3 = perfs.getString("name-team3") ?? "";
    _nameTeam4 = perfs.getString("name-team4") ?? "";

    _numberOfTeams = perfs.getInt("number-of-team") ?? 2;
    _numberofRoundsOfGame = perfs.getInt("numberofRoundsOfGame") ?? 3;
    _numberOfRoundsOfGameTitle = perfs.getInt("numberOfRoundsGameTitle") ?? 3;
    notifyListeners();
  }
}
