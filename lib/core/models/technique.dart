import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'technique.freezed.dart';
part 'technique.g.dart';

@freezed
class Technique with _$Technique {
  @HiveType(typeId: 7, adapterName: 'TechniqueAdapter')
  const factory Technique({
    @HiveField(0) String? name,
    @HiveField(1) String? source,
    @HiveField(2) int? levels,
  }) = _Technique;

  const Technique._();

  factory Technique.fromJson(Map<String, dynamic> json) =>
      _$TechniqueFromJson(json);
}
