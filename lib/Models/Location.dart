class Location {
  final String location;
  final String island;
  final String frequency;
  final String level;

  Location({this.location, this.island, this.frequency, this.level});

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      location: json['location'],
      island: json['island'],
      frequency: json['frequency'],
      level: json['level'],
    );
  }
}
