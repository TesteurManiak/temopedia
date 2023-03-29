// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gender_ratio.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GenderRatioAdapter extends TypeAdapter<_$_GenderRatio> {
  @override
  final int typeId = 12;

  @override
  _$_GenderRatio read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_GenderRatio(
      male: fields[0] as int,
      female: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_GenderRatio obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.male)
      ..writeByte(1)
      ..write(obj.female);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GenderRatioAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_GenderRatio _$$_GenderRatioFromJson(Map<String, dynamic> json) =>
    _$_GenderRatio(
      male: json['male'] as int? ?? 0,
      female: json['female'] as int? ?? 0,
    );

Map<String, dynamic> _$$_GenderRatioToJson(_$_GenderRatio instance) =>
    <String, dynamic>{
      'male': instance.male,
      'female': instance.female,
    };
