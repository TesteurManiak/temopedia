// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'technique.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TechniqueAdapter extends TypeAdapter<_$_Technique> {
  @override
  final int typeId = 7;

  @override
  _$_Technique read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Technique(
      name: fields[0] as String?,
      source: fields[1] as String?,
      levels: fields[2] as int?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Technique obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.source)
      ..writeByte(2)
      ..write(obj.levels);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TechniqueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Technique _$$_TechniqueFromJson(Map<String, dynamic> json) => _$_Technique(
      name: json['name'] as String?,
      source: json['source'] as String?,
      levels: json['levels'] as int?,
    );

Map<String, dynamic> _$$_TechniqueToJson(_$_Technique instance) =>
    <String, dynamic>{
      'name': instance.name,
      'source': instance.source,
      'levels': instance.levels,
    };
