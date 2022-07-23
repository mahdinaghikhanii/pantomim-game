import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pantomim/models/team.dart';

class TeamData with ChangeNotifier {
  addTeamInformation(TeamModel teamModel) async {
    var box = await Hive.openBox<TeamModel>('mahdi');
    box.add(teamModel);
    notifyListeners();
  }

  List _teamDataList = <TeamModel>[];
  List get getTeamDataList => _teamDataList;

  getIteam() async {
    final box = await Hive.openBox<TeamModel>('mahdi');
    _teamDataList = box.values.toList();
    notifyListeners();
  }
}
