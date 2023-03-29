// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'details.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DetailsAdapter extends TypeAdapter<_$_Details> {
  @override
  final int typeId = 4;

  @override
  _$_Details read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Details(
      height: fields[0] as Height,
      weight: fields[1] as Weight,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Details obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.height)
      ..writeByte(1)
      ..write(obj.weight);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DetailsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class HeightAdapter extends TypeAdapter<_$_Height> {
  @override
  final int typeId = 5;

  @override
  _$_Height read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Height(
      cm: fields[0] as int,
      inches: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Height obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.cm)
      ..writeByte(1)
      ..write(obj.inches);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HeightAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class WeightAdapter extends TypeAdapter<_$_Weight> {
  @override
  final int typeId = 6;

  @override
  _$_Weight read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Weight(
      kg: fields[0] as int,
      lbs: fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Weight obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.kg)
      ..writeByte(1)
      ..write(obj.lbs);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WeightAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Details _$$_DetailsFromJson(Map<String, dynamic> json) => _$_Details(
      height: json['height'] == null
          ? const Height()
          : Height.fromJson(json['height'] as Map<String, dynamic>),
      weight: json['weight'] == null
          ? const Weight()
          : Weight.fromJson(json['weight'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DetailsToJson(_$_Details instance) =>
    <String, dynamic>{
      'height': instance.height,
      'weight': instance.weight,
    };

_$_Height _$$_HeightFromJson(Map<String, dynamic> json) => _$_Height(
      cm: json['cm'] as int? ?? 0,
      inches: json['inches'] as int? ?? 0,
    );

Map<String, dynamic> _$$_HeightToJson(_$_Height instance) => <String, dynamic>{
      'cm': instance.cm,
      'inches': instance.inches,
    };

_$_Weight _$$_WeightFromJson(Map<String, dynamic> json) => _$_Weight(
      kg: json['kg'] as int? ?? 0,
      lbs: json['lbs'] as int? ?? 0,
    );

Map<String, dynamic> _$$_WeightToJson(_$_Weight instance) => <String, dynamic>{
      'kg': instance.kg,
      'lbs': instance.lbs,
    };
