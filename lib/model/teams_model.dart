import 'package:getx_api/model/team_model.dart';

class TeamsModel {
  final TeamModel home;
  final TeamModel away;

  TeamsModel({
    required this.home,
    required this.away,
  });

  factory TeamsModel.fromJson(Map<String, dynamic> json) {
    return TeamsModel(
      home: TeamModel.fromJson(json['home']),
      away: TeamModel.fromJson(json['away']),
    );
  }
}
