import 'package:temopedia/utils/Globals.dart' as globals;

class Stats {
  final int hp;
  final int sta;
  final int spd;
  final int atk;
  final int def;
  final int spatk;
  final int spdef;
  final int total;

  Stats({
    this.hp,
    this.sta,
    this.spd,
    this.atk,
    this.def,
    this.spatk,
    this.spdef,
    this.total,
  });

  factory Stats.fromJson(Map<String, dynamic> json) {
    int _checkMax(int json, String globalMax) {
      if (json > globals.maxStats[globalMax])
        globals.maxStats[globalMax] = json;
      return json;
    }

    return Stats(
      hp: _checkMax(json['hp'], "hp"),
      sta: _checkMax(json['sta'], "sta"),
      spd: _checkMax(json['spd'], "spd"),
      atk: _checkMax(json['atk'], "atk"),
      def: _checkMax(json['def'], "def"),
      spatk: _checkMax(json['spatk'], "spatk"),
      spdef: _checkMax(json['spdef'], "spdef"),
      total: json['total'],
    );
  }
}
