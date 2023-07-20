import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'trait.freezed.dart';
part 'trait.g.dart';

@freezed
class Trait with _$Trait {
  @HiveType(typeId: 13, adapterName: 'TraitAdapter')
  const factory Trait({
    @HiveField(0) required String name,
    @HiveField(1) required String wikiUrl,
    @HiveField(2) required String description,
    @HiveField(3) required String effect,
  }) = _Trait;

  const Trait._();

  factory Trait.fromJson(Map<String, dynamic> json) => _$TraitFromJson(json);
}
