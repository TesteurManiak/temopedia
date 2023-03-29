import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'gender_ratio.freezed.dart';
part 'gender_ratio.g.dart';

@freezed
class GenderRatio with _$GenderRatio {
  @HiveType(typeId: 12, adapterName: 'GenderRatioAdapter')
  const factory GenderRatio({
    @Default(0) @HiveField(0) int male,
    @Default(0) @HiveField(1) int female,
  }) = _GenderRatio;

  const GenderRatio._();

  factory GenderRatio.fromJson(Map<String, dynamic> json) =>
      _$GenderRatioFromJson(json);
}
