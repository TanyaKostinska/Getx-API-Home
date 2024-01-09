import 'package:getx_api/model/teams_model.dart';

class FixtureItemModel {
  final TeamsModel teams;

  FixtureItemModel({required this.teams});

  factory FixtureItemModel.fromJson(Map<String, dynamic> json) => FixtureItemModel(
        teams: TeamsModel.fromJson(
          json['teams'],
        ),
      );
}
