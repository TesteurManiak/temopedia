// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class LocationAdapter extends TypeAdapter<_$_Location> {
  @override
  final int typeId = 10;

  @override
  _$_Location read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Location(
      location: fields[0] as String?,
      place: fields[1] as String?,
      note: fields[2] as String?,
      island: fields[3] as String?,
      frequency: fields[4] as String?,
      level: fields[5] as String?,
      freetem: fields[6] as Freetem?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Location obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.location)
      ..writeByte(1)
      ..write(obj.place)
      ..writeByte(2)
      ..write(obj.note)
      ..writeByte(3)
      ..write(obj.island)
      ..writeByte(4)
      ..write(obj.frequency)
      ..writeByte(5)
      ..write(obj.level)
      ..writeByte(6)
      ..write(obj.freetem);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is LocationAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class FreetemAdapter extends TypeAdapter<_$_Freetem> {
  @override
  final int typeId = 11;

  @override
  _$_Freetem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Freetem(
      minLevel: fields[0] as int,
      maxLevel: fields[1] as int,
      minPansuns: fields[2] as int,
      maxPansuns: fields[3] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Freetem obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.minLevel)
      ..writeByte(1)
      ..write(obj.maxLevel)
      ..writeByte(2)
      ..write(obj.minPansuns)
      ..writeByte(3)
      ..write(obj.maxPansuns);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FreetemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Location _$$_LocationFromJson(Map<String, dynamic> json) => _$_Location(
      location: json['location'] as String?,
      place: json['place'] as String?,
      note: json['note'] as String?,
      island: json['island'] as String?,
      frequency: json['frequency'] as String?,
      level: json['level'] as String?,
      freetem: json['freetem'] == null
          ? null
          : Freetem.fromJson(json['freetem'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LocationToJson(_$_Location instance) =>
    <String, dynamic>{
      'location': instance.location,
      'place': instance.place,
      'note': instance.note,
      'island': instance.island,
      'frequency': instance.frequency,
      'level': instance.level,
      'freetem': instance.freetem,
    };

_$_Freetem _$$_FreetemFromJson(Map<String, dynamic> json) => _$_Freetem(
      minLevel: json['minLevel'] as int? ?? 0,
      maxLevel: json['maxLevel'] as int? ?? 0,
      minPansuns: json['minPansuns'] as int? ?? 0,
      maxPansuns: json['maxPansuns'] as int? ?? 0,
    );

Map<String, dynamic> _$$_FreetemToJson(_$_Freetem instance) =>
    <String, dynamic>{
      'minLevel': instance.minLevel,
      'maxLevel': instance.maxLevel,
      'minPansuns': instance.minPansuns,
      'maxPansuns': instance.maxPansuns,
    };
