import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@freezed
class Stats with _$Stats {
  const factory Stats({
    @Default(0) int hp,
    @Default(0) int sta,
    @Default(0) int spd,
    @Default(0) int atk,
    @Default(0) int def,
    @Default(0) int spatk,
    @Default(0) int spdef,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  const Stats._();

  int get total => hp + sta + spd + atk + def + spatk + spdef;
}
