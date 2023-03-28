import 'package:freezed_annotation/freezed_annotation.dart';

part 'details.freezed.dart';
part 'details.g.dart';

@freezed
class Details with _$Details {
  const factory Details({
    @Default(Height()) Height height,
    @Default(Weight()) Weight weight,
  }) = _Details;

  factory Details.fromJson(Map<String, dynamic> json) =>
      _$DetailsFromJson(json);
}

@freezed
class Height with _$Height {
  const factory Height({
    @Default(0) int cm,
    @Default(0) int inches,
  }) = _Height;

  factory Height.fromJson(Map<String, dynamic> json) => _$HeightFromJson(json);
}

@freezed
class Weight with _$Weight {
  const factory Weight({
    @Default(0) int kg,
    @Default(0) int lbs,
  }) = _Weight;

  factory Weight.fromJson(Map<String, dynamic> json) => _$WeightFromJson(json);
}
