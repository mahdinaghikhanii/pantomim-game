import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class History with ChangeNotifier {
  int _index = 0;
  int get numberofAllGame => _index;

  void incermnetNumberOfRounds() {
    _index++;
    saveAllMatchPlayingGame();
    notifyListeners();
  }

  void saveAllMatchPlayingGame() async {
    final perfs = await SharedPreferences.getInstance();
    await perfs.setInt("ALL-Game-KEY", _index);

    notifyListeners();
  }

  void cleanNumberOfAllGame() async {
    final perfs = await SharedPreferences.getInstance();

    perfs.setInt('"ALL-Game-KEY"', 0);
    notifyListeners();
  }

  int getNumberAllRoundsGmae() {
    getAllMatchPlayingGame();
    return _index;
  }

  void getAllMatchPlayingGame() async {
    final perfs = await SharedPreferences.getInstance();
    _index = perfs.getInt("ALL-Game-KEY") ?? 0;
    notifyListeners();
  }
}
