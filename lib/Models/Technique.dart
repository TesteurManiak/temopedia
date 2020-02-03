class Technique {
  final String name;
  final String source;

  Technique({this.name, this.source});

  factory Technique.fromJson(Map<String, dynamic> json) {
    return Technique(name: json['name'], source: json['source']);
  }
}
