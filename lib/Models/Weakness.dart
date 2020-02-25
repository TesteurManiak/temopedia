import 'package:temopedia/utils/JsonHelper.dart';

class Weakness {
  final String name;
  final double neutral;
  final double fire;
  final double water;
  final double nature;
  final double electric;
  final double earth;
  final double mental;
  final double wind;
  final double digital;
  final double melee;
  final double crystal;
  final double toxic;

  Weakness({
    this.name,
    this.neutral,
    this.fire,
    this.water,
    this.nature,
    this.electric,
    this.earth,
    this.mental,
    this.wind,
    this.digital,
    this.melee,
    this.crystal,
    this.toxic,
  });

  factory Weakness.fromJson(Map<String, dynamic> json, name) {
    return Weakness(
      name: name,
      neutral: json[JsonHelper.neutral] * 1.0,
      fire: json[JsonHelper.fire] * 1.0,
      water: json[JsonHelper.water] * 1.0,
      nature: json[JsonHelper.nature] * 1.0,
      electric: json[JsonHelper.electric] * 1.0,
      earth: json[JsonHelper.earth] * 1.0,
      mental: json[JsonHelper.mental] * 1.0,
      wind: json[JsonHelper.wind] * 1.0,
      digital: json[JsonHelper.digital] * 1.0,
      melee: json[JsonHelper.melee] * 1.0,
      crystal: json[JsonHelper.crystal] * 1.0,
      toxic: json[JsonHelper.toxic] * 1.0,
    );
  }
}
