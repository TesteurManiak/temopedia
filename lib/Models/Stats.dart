import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temopedia/utils/JsonHelper.dart';

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
      hp: _checkMax(json[JsonHelper.hp], JsonHelper.hp),
      sta: _checkMax(json[JsonHelper.sta], JsonHelper.sta),
      spd: _checkMax(json[JsonHelper.spd], JsonHelper.spd),
      atk: _checkMax(json[JsonHelper.atk], JsonHelper.atk),
      def: _checkMax(json[JsonHelper.def], JsonHelper.def),
      spatk: _checkMax(json[JsonHelper.spatk], JsonHelper.spatk),
      spdef: _checkMax(json[JsonHelper.spdef], JsonHelper.spdef),
      total: json[JsonHelper.total],
    );
  }

  factory Stats.fromTvYieldsJson(Map<String, dynamic> json) {
    return Stats(
      hp: json[JsonHelper.hp],
      sta: json[JsonHelper.sta],
      spd: json[JsonHelper.spd],
      atk: json[JsonHelper.atk],
      def: json[JsonHelper.def],
      spatk: json[JsonHelper.spatk],
      spdef: json[JsonHelper.spdef],
      total: json[JsonHelper.total],
    );
  }
}
