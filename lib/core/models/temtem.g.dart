// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temtem.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Temtem _$$_TemtemFromJson(Map<String, dynamic> json) => _$_Temtem(
      number: json['number'] as int,
      name: json['name'] as String?,
      types: json['types'] == null
          ? const <Type>[]
          : const TypeListConverter().fromJson(json['types'] as List),
      portraitWikiUrl: json['portraitWikiUrl'] as String?,
      lumaPortraitWikiUrl: json['lumaPortraitWikiUrl'] as String?,
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
      trivia: (json['trivia'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
      evolution: json['evolution'] == null
          ? null
          : Evolution.fromJson(json['evolution'] as Map<String, dynamic>),
      wikiPortraitUrlLarge: json['wikiPortraitUrlLarge'] as String?,
      lumaWikiPortraitUrlLarge: json['lumaWikiPortraitUrlLarge'] as String?,
      icon: json['icon'] as String?,
      lumaIcon: json['lumaIcon'] as String?,
      genderRatio: json['genderRatio'] == null
          ? const GenderRatio()
          : GenderRatio.fromJson(json['genderRatio'] as Map<String, dynamic>),
      catchRate: json['catchRate'] as int? ?? 0,
      hatchMins: (json['hatchMins'] as num?)?.toDouble() ?? 0,
      tvYields: json['tvYields'] == null
          ? const Stats()
          : Stats.fromJson(json['tvYields'] as Map<String, dynamic>),
      gameDescription: json['gameDescription'] as String?,
      wikiRenderStaticUrl: json['wikiRenderStaticUrl'] as String?,
      wikiRenderAnimatedUrl: json['wikiRenderAnimatedUrl'] as String?,
      wikiRenderStaticLumaUrl: json['wikiRenderStaticLumaUrl'] as String?,
      wikiRenderAnimatedLumaUrl: json['wikiRenderAnimatedLumaUrl'] as String?,
      renderStaticImage: json['renderStaticImage'] as String?,
      renderStaticLumaImage: json['renderStaticLumaImage'] as String?,
      renderAnimatedImage: json['renderAnimatedImage'] as String?,
      renderAnimatedLumaImage: json['renderAnimatedLumaImage'] as String?,
    );

Map<String, dynamic> _$$_TemtemToJson(_$_Temtem instance) => <String, dynamic>{
      'number': instance.number,
      'name': instance.name,
      'types': const TypeListConverter().toJson(instance.types),
      'portraitWikiUrl': instance.portraitWikiUrl,
      'lumaPortraitWikiUrl': instance.lumaPortraitWikiUrl,
      'wikiUrl': instance.wikiUrl,
      'stats': instance.stats,
      'traits': instance.traits,
      'details': instance.details,
      'techniques': instance.techniques,
      'trivia': instance.trivia,
      'evolution': instance.evolution,
      'wikiPortraitUrlLarge': instance.wikiPortraitUrlLarge,
      'lumaWikiPortraitUrlLarge': instance.lumaWikiPortraitUrlLarge,
      'icon': instance.icon,
      'lumaIcon': instance.lumaIcon,
      'genderRatio': instance.genderRatio,
      'catchRate': instance.catchRate,
      'hatchMins': instance.hatchMins,
      'tvYields': instance.tvYields,
      'gameDescription': instance.gameDescription,
      'wikiRenderStaticUrl': instance.wikiRenderStaticUrl,
      'wikiRenderAnimatedUrl': instance.wikiRenderAnimatedUrl,
      'wikiRenderStaticLumaUrl': instance.wikiRenderStaticLumaUrl,
      'wikiRenderAnimatedLumaUrl': instance.wikiRenderAnimatedLumaUrl,
      'renderStaticImage': instance.renderStaticImage,
      'renderStaticLumaImage': instance.renderStaticLumaImage,
      'renderAnimatedImage': instance.renderAnimatedImage,
      'renderAnimatedLumaImage': instance.renderAnimatedLumaImage,
    };
