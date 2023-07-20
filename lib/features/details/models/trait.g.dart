// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trait.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TraitAdapter extends TypeAdapter<_$_Trait> {
  @override
  final int typeId = 13;

  @override
  _$_Trait read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Trait(
      name: fields[0] as String,
      wikiUrl: fields[1] as String,
      description: fields[2] as String,
      effect: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Trait obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.wikiUrl)
      ..writeByte(2)
      ..write(obj.description)
      ..writeByte(3)
      ..write(obj.effect);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TraitAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Trait _$$_TraitFromJson(Map<String, dynamic> json) => _$_Trait(
      name: json['name'] as String,
      wikiUrl: json['wikiUrl'] as String,
      description: json['description'] as String,
      effect: json['effect'] as String,
    );

Map<String, dynamic> _$$_TraitToJson(_$_Trait instance) => <String, dynamic>{
      'name': instance.name,
      'wikiUrl': instance.wikiUrl,
      'description': instance.description,
      'effect': instance.effect,
    };
