// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'stats.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class StatsAdapter extends TypeAdapter<_$_Stats> {
  @override
  final int typeId = 3;

  @override
  _$_Stats read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Stats(
      hp: fields[0] as int,
      sta: fields[1] as int,
      spd: fields[2] as int,
      atk: fields[3] as int,
      def: fields[4] as int,
      spatk: fields[5] as int,
      spdef: fields[6] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Stats obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.hp)
      ..writeByte(1)
      ..write(obj.sta)
      ..writeByte(2)
      ..write(obj.spd)
      ..writeByte(3)
      ..write(obj.atk)
      ..writeByte(4)
      ..write(obj.def)
      ..writeByte(5)
      ..write(obj.spatk)
      ..writeByte(6)
      ..write(obj.spdef);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StatsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Stats _$$_StatsFromJson(Map<String, dynamic> json) => _$_Stats(
      hp: json['hp'] as int? ?? 0,
      sta: json['sta'] as int? ?? 0,
      spd: json['spd'] as int? ?? 0,
      atk: json['atk'] as int? ?? 0,
      def: json['def'] as int? ?? 0,
      spatk: json['spatk'] as int? ?? 0,
      spdef: json['spdef'] as int? ?? 0,
    );

Map<String, dynamic> _$$_StatsToJson(_$_Stats instance) => <String, dynamic>{
      'hp': instance.hp,
      'sta': instance.sta,
      'spd': instance.spd,
      'atk': instance.atk,
      'def': instance.def,
      'spatk': instance.spatk,
      'spdef': instance.spdef,
    };
