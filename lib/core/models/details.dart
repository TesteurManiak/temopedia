import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'details.freezed.dart';
part 'details.g.dart';

@freezed
class Details with _$Details {
  @HiveType(typeId: 4, adapterName: 'DetailsAdapter')
  const factory Details({
    @HiveField(0) @Default(Height()) Height height,
    @HiveField(1) @Default(Weight()) Weight weight,
  }) = _Details;

  const Details._();

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}

@freezed
class Height with _$Height {
  @HiveType(typeId: 5, adapterName: 'HeightAdapter')
  const factory Height({
    @HiveField(0) @Default(0) int cm,
    @HiveField(1) @Default(0) int inches,
  }) = _Height;

  const Height._();

  factory Height.fromJson(Map<String, dynamic> json) => _$HeightFromJson(json);
}

@freezed
class Weight with _$Weight {
  @HiveType(typeId: 6, adapterName: 'WeightAdapter')
  const factory Weight({
    @HiveField(0) @Default(0) int kg,
    @HiveField(1) @Default(0) int lbs,
  }) = _Weight;

  const Weight._();

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
}
