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
      stats: json['stats'] == null
          ? const Stats()
          : Stats.fromJson(json['stats'] as Map<String, dynamic>),
      traits: (json['traits'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      details: json['details'] == null
          ? const Details()
          : Details.fromJson(json['details'] as Map<String, dynamic>),
      techniques: (json['techniques'] as List<dynamic>?)
              ?.map((e) => Technique.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Technique>[],
    );

Map<String, dynamic> _$$_TemtemToJson(_$_Temtem instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'types': const TypeListConverter().toJson(instance.types),
      'portraitWikiUrl': instance.portraitWikiUrl,
      'wikiUrl': instance.wikiUrl,
      'stats': instance.stats,
      'traits': instance.traits,
      'details': instance.details,
      'techniques': instance.techniques,
    };
