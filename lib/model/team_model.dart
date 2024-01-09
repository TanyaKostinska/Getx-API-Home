class TeamModel {
  final String name;
  final String logo;

  TeamModel({
    required this.name,
    required this.logo,
  });

  factory TeamModel.fromJson(Map<String, dynamic> json) => TeamModel(
        name: json['name'],
        logo: json['logo'],
      );
}
