import 'package:freezed_annotation/freezed_annotation.dart';

part 'technique.freezed.dart';
part 'technique.g.dart';

@freezed
class Technique with _$Technique {
  const factory Technique({
    String? name,
    String? source,
    int? levels,
  }) = _Technique;

  factory Technique.fromJson(Map<String, dynamic> json) =>
      _$TechniqueFromJson(json);
}
