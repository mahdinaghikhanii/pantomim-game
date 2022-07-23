import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:pantomim/models/team.dart';

class TeamData with ChangeNotifier {
  addTeamInformation(TeamModel teamModel) async {
    var box = await Hive.openBox('team');
    box.add(teamModel);

    notifyListeners();
  }
}
