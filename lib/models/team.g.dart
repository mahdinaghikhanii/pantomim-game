// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'team.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TeamModelAdapter extends TypeAdapter<TeamModel> {
  @override
  final int typeId = 1;

  @override
  TeamModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TeamModel(
      fields[0] as String,
      fields[1] as String,
      fields[2] as String,
      fields[3] as String,
      fields[4] as int,
      fields[5] as int,
      fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, TeamModel obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.team1)
      ..writeByte(1)
      ..write(obj.team2)
      ..writeByte(2)
      ..write(obj.team3)
      ..writeByte(3)
      ..write(obj.team4)
      ..writeByte(4)
      ..write(obj.numberOfTeams)
      ..writeByte(5)
      ..write(obj.numberofRoundsGame)
      ..writeByte(6)
      ..write(obj.numberofRoundsGameTitle);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TeamModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
