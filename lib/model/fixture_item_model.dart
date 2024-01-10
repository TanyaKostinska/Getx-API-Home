import 'package:getx_api/model/teams_model.dart';

import 'goals_model.dart';

class FixtureItemModel {
  final TeamsModel teams;
  final GoalsModel? goals;

  FixtureItemModel({
    required this.teams,
    required this.goals,
  });

  factory FixtureItemModel.fromJson(Map<String, dynamic> json) =>
      FixtureItemModel(
        teams: TeamsModel.fromJson(
          json['teams'],
        ),
        goals: GoalsModel.fromJson(
          json['goals'],
        ),
      );
}
