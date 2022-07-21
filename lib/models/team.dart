import 'package:hive/hive.dart';

part 'team.g.dart';

@HiveType(typeId: 1)
class TeamModel {
  @HiveField(0)
  String team1;
  @HiveField(1)
  String team2;
  @HiveField(2)
  String team3;
  @HiveField(3)
  String team4;
  @HiveField(4)
  int numberOfTeams;
  @HiveField(5)
  int numberofRoundsGame;
  @HiveField(6)
  int numberofRoundsGameTitle;

  TeamModel(this.team1, this.team2, this.team3, this.team4, this.numberOfTeams,
      this.numberofRoundsGame, this.numberofRoundsGameTitle);
}
