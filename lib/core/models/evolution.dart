import 'package:freezed_annotation/freezed_annotation.dart';

part 'evolution.freezed.dart';
part 'evolution.g.dart';

@freezed
class Evolution with _$Evolution {
  const factory Evolution({
    @Default(0) int stage,
    @Default(<EvolutionNode>[]) List<EvolutionNode> evolutionTree,
    @Default(false) bool evolves,
    String? type,
  }) = _Evolution;

  factory Evolution.fromJson(Map<String, dynamic> json) =>
      _$EvolutionFromJson(json);
}

@freezed
class EvolutionNode with _$EvolutionNode {
  const factory EvolutionNode({
    required int number,
    String? name,
    @Default(0) int stage,
    @Default(0) int levels,
    @Default(false) bool trading,
    @Default(<String, String>{}) Map<String, String> traitMapping,
  }) = _EvolutionNode;

  factory EvolutionNode.fromJson(Map<String, dynamic> json) =>
      _$EvolutionNodeFromJson(json);
}
