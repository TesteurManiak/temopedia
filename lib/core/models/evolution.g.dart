// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'evolution.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class EvolutionAdapter extends TypeAdapter<_$_Evolution> {
  @override
  final int typeId = 8;

  @override
  _$_Evolution read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Evolution(
      stage: fields[0] as int,
      evolutionTree: (fields[1] as List).cast<EvolutionNode>(),
      evolves: fields[2] as bool,
      type: fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Evolution obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.stage)
      ..writeByte(2)
      ..write(obj.evolves)
      ..writeByte(3)
      ..write(obj.type)
      ..writeByte(1)
      ..write(obj.evolutionTree);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EvolutionAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class EvolutionNodeAdapter extends TypeAdapter<_$_EvolutionNode> {
  @override
  final int typeId = 9;

  @override
  _$_EvolutionNode read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_EvolutionNode(
      number: fields[0] as int,
      name: fields[1] as String?,
      stage: fields[2] as int,
      levels: fields[3] as int,
      trading: fields[4] as bool,
      traitMapping: (fields[5] as Map).cast<String, String>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_EvolutionNode obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.stage)
      ..writeByte(3)
      ..write(obj.levels)
      ..writeByte(4)
      ..write(obj.trading)
      ..writeByte(5)
      ..write(obj.traitMapping);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is EvolutionNodeAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
