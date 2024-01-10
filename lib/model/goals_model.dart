class GoalsModel {
  final int? home;
  final int? away;

  GoalsModel({
    required this.home,
    required this.away,
  });

  factory GoalsModel.fromJson(Map<String, dynamic> json) {

    return GoalsModel(
      home: json['home'],
      away: json['away'],
    );
  }
}
