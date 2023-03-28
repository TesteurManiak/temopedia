// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temtem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Temtem _$$_TemtemFromJson(Map<String, dynamic> json) => _$_Temtem(
      number: json['number'] as int?,
      name: json['name'] as String?,
      types: json['types'] == null
          ? const <Type>[]
          : const TypeListConverter().fromJson(json['types'] as List<String>),
      portraitWikiUrl: json['portraitWikiUrl'] as String?,
      wikiUrl: json['wikiUrl'] as String?,
    );

Map<String, dynamic> _$$_TemtemToJson(_$_Temtem instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'types': const TypeListConverter().toJson(instance.types),
      'portraitWikiUrl': instance.portraitWikiUrl,
      'wikiUrl': instance.wikiUrl,
    };
