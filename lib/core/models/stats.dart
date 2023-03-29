import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@freezed
class Stats with _$Stats {
  @HiveType(typeId: 3, adapterName: 'StatsAdapter')
  const factory Stats({
    @HiveField(0) @Default(0) int hp,
    @HiveField(1) @Default(0) int sta,
    @HiveField(2) @Default(0) int spd,
    @HiveField(3) @Default(0) int atk,
    @HiveField(4) @Default(0) int def,
    @HiveField(5) @Default(0) int spatk,
    @HiveField(6) @Default(0) int spdef,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  const Stats._();

  int get total => hp + sta + spd + atk + def + spatk + spdef;
}
