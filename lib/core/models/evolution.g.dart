// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Evolution _$$_EvolutionFromJson(Map<String, dynamic> json) => _$_Evolution(
      stage: json['stage'] as int? ?? 0,
      evolutionTree: (json['evolutionTree'] as List<dynamic>?)
              ?.map((e) => EvolutionNode.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <EvolutionNode>[],
      evolves: json['evolves'] as bool? ?? false,
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$_EvolutionToJson(_$_Evolution instance) =>
    <String, dynamic>{
      'stage': instance.stage,
      'evolutionTree': instance.evolutionTree,
      'evolves': instance.evolves,
      'type': instance.type,
    };

_$_EvolutionNode _$$_EvolutionNodeFromJson(Map<String, dynamic> json) =>
    _$_EvolutionNode(
      number: json['number'] as int,
      name: json['name'] as String?,
      stage: json['stage'] as int? ?? 0,
      levels: json['levels'] as int? ?? 0,
      trading: json['trading'] as bool? ?? false,
      traitMapping: (json['traitMapping'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
    );

Map<String, dynamic> _$$_EvolutionNodeToJson(_$_EvolutionNode instance) =>
    <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'stage': instance.stage,
      'levels': instance.levels,
      'trading': instance.trading,
      'traitMapping': instance.traitMapping,
    };
