class Weakness {
  final String name;
  final Map<String, double> weaknesses;

  Weakness({required this.name, required this.weaknesses});

  factory Weakness.fromJson(Map<String, dynamic> json, name) {
    Map<String, double> _weaknesses = Map();
    json.forEach((key, weakness) =>
        _weaknesses[key] = double.parse(weakness.toString()));
    return Weakness(name: name, weaknesses: _weaknesses);
  }
}
