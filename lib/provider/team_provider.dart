import 'package:flutter/material.dart';
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

  changeNameTeams1(String value) async {
    final perfs = await SharedPreferences.getInstance();
    if (value.length >= 2) {
      _nameTeam1 = value;
      await perfs.setString("name-team-1", value);
    }
    notifyListeners();
  }

  changeNameTeams2(String value) async {
    final perfs = await SharedPreferences.getInstance();
    if (value.length >= 2) {
      _nameTeam2 = value;
      await perfs.setString("name-team-2", value);
    }
    notifyListeners();
  }

  void changeNameTeams3(String value) async {
    final perfs = await SharedPreferences.getInstance();
    if (value.length >= 2) {
      _nameTeam3 = value;
      await perfs.setString("name-team-3", value);
    }
    notifyListeners();
  }

  void changeNameTeams4(String value) async {
    final perfs = await SharedPreferences.getInstance();
    if (value.length >= 2) {
      _nameTeam4 = value;
      await perfs.setString("name-team-4", value);
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
  int _numberOfTeamShowIconPlay = -1;
  void incrementinnigns() {
    _numberOfTeamShowIconPlay++;
    notifyListeners();
  }

  int get getcheckforInnigns => _numberOfTeamShowIconPlay;

  void setaddcheckforInnigns() {
    if (_winorlosebtn == true) {
      _numberOfTeamShowIconPlay++;
    } else {
      _numberOfTeamShowIconPlay++;
    }

    if (_numberOfTeamShowIconPlay == _numberOfTeams) {
      if (_numberOfRoundsOfGameTitle == _numberofRoundsOfGame) {
        _numberOfTeamShowIconPlay++;
        _numberOfTeamShowIconPlay++;

        notifyListeners();
        if (_numberOfTeamShowIconPlay == _numberOfTeams) {
          _numberOfTeamShowIconPlay++;
        }
      } else {
        _numberOfTeamShowIconPlay = 0;
        _numberOfRoundsOfGameTitle++;
      }
    } else {
      _numberOfTeamShowIconPlay;
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

    _numberOfTeamShowIconPlay = -1;
  }

// this function for set visibility Icon in detailGame for Screans
  void setvisibilityIcon() {
    switch (_numberOfTeamShowIconPlay) {
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
      return _nameTeam1;
    }
    if (_visibilirtIconTeam2 == true) {
      return _nameTeam2;
    }
    if (_visibilirtIconTeam3 == true) {
      return _nameTeam3;
    }
    if (_visibilirtIconTeam4 == true) {
      return _nameTeam4;
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

  void backGameIconShow(bool backGame) async {
    final perfs = await SharedPreferences.getInstance();
    _showIconbackGame = backGame;
    await perfs.setBool("ShowIconBackGame", backGame);
    notifyListeners();
  }

  String _nameTeam1 = "";
  String _nameTeam2 = "";
  String _nameTeam3 = "";
  String _nameTeam4 = "";

  String get getNameTeam1 => _nameTeam1;
  String get getNameTeam2 => _nameTeam2;
  String get getNameTeam3 => _nameTeam3;
  String get getNameTeam4 => _nameTeam4;

  getResetInformation() async {
    final perfs = await SharedPreferences.getInstance();
    _nameTeam1 = "تیم ۱";
    await perfs.setString("name-team-1", "تیم ۱");
    _nameTeam2 = "تیم 2";
    await perfs.setString("name-team-2", "تیم ۲");
    _nameTeam3 = "تیم 3";
    await perfs.setString("name-team-3", "تیم ۳");
    _nameTeam4 = "تیم 4";
    await perfs.setString("name-team-4", "تیم ۴");
    notifyListeners();
  }

  getShowIconbackGame() async {
    final perfs = await SharedPreferences.getInstance();
    _nameTeam1 = perfs.getString("name-team-1") ?? "تیم 1";
    _nameTeam2 = perfs.getString("name-team-2") ?? "تیم 2";
    _nameTeam3 = perfs.getString("name-team-3") ?? "تیم 3";
    _nameTeam4 = perfs.getString("name-team-4") ?? "تیم 4";
    _showIconbackGame = perfs.getBool('ShowIconBackGame') ?? false;

    /*_numberOfTeams = perfs.getInt("number-of-team") ?? 2;
    _numberofRoundsOfGame = perfs.getInt("numberofRoundsOfGame") ?? 3;
    _numberOfRoundsOfGameTitle = perfs.getInt("numberOfRoundsGameTitle") ?? 1;*/

    notifyListeners();
  }
}
