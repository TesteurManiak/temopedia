// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

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
