import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'evolution.freezed.dart';
part 'evolution.g.dart';

@freezed
class Evolution with _$Evolution {
  @HiveType(typeId: 8, adapterName: 'EvolutionAdapter')
  const factory Evolution({
    @Default(0) @HiveField(0) int stage,
    @Default(<EvolutionNode>[]) @HiveField(1) List<EvolutionNode> evolutionTree,
    @Default(false) @HiveField(2) bool evolves,
    @HiveField(3) String? type,
  }) = _Evolution;

  const Evolution._();

  factory Evolution.fromJson(Map<String, dynamic> json) =>
      _$EvolutionFromJson(json);
}

@freezed
class EvolutionNode with _$EvolutionNode {
  @HiveType(typeId: 9, adapterName: 'EvolutionNodeAdapter')
  const factory EvolutionNode({
    @HiveField(0) required int number,
    @HiveField(1) String? name,
    @Default(0) @HiveField(2) int stage,
    @Default(0) @HiveField(3) int levels,
    @Default(false) @HiveField(4) bool trading,
    @Default(<String, String>{}) @HiveField(5) Map<String, String> traitMapping,
  }) = _EvolutionNode;

  const EvolutionNode._();

  factory EvolutionNode.fromJson(Map<String, dynamic> json) =>
      _$EvolutionNodeFromJson(json);
}
