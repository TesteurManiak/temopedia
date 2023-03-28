import 'package:freezed_annotation/freezed_annotation.dart';

part 'gender_ratio.freezed.dart';
part 'gender_ratio.g.dart';

@freezed
class GenderRatio with _$GenderRatio {
  const factory GenderRatio({
    @Default(0) int male,
    @Default(0) int female,
  }) = _GenderRatio;

  factory GenderRatio.fromJson(Map<String, dynamic> json) =>
      _$GenderRatioFromJson(json);
}
