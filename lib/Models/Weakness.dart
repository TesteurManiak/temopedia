class Weakness {
  final String name;
  final Map<String, double> weaknesses;

  Weakness({required this.name, required this.weaknesses});

  factory Weakness.fromJson(Map<String, dynamic> json, name) {
    Map<String, double> weaknesses = {};
    json.forEach(
      (key, weakness) => weaknesses[key] = double.parse(weakness.toString()),
    );
    return Weakness(name: name, weaknesses: weaknesses);
  }
}
