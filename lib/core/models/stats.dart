import 'package:freezed_annotation/freezed_annotation.dart';

part 'stats.freezed.dart';
part 'stats.g.dart';

@freezed
class Stats with _$Stats {
  const factory Stats({
    @Default(0) int hp,
    @Default(0) int st,
    @Default(0) int dx,
    @Default(0) int iq,
    @Default(0) int sp,
    @Default(0) int at,
    @Default(0) int df,
    @Default(0) int sa,
    @Default(0) int sd,
    @Default(0) int ev,
    @Default(0) int ac,
  }) = _Stats;

  factory Stats.fromJson(Map<String, dynamic> json) => _$StatsFromJson(json);

  const Stats._();

  int get total => hp + st + dx + iq + sp + at + df + sa + sd + ev + ac;
}
