// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temtem.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TemtemAdapter extends TypeAdapter<_$_Temtem> {
  @override
  final int typeId = 1;

  @override
  _$_Temtem read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_Temtem(
      number: fields[0] as int,
      name: fields[1] as String?,
      types: (fields[2] as List).cast<TemType>(),
      portraitWikiUrl: fields[3] as String?,
      lumaPortraitWikiUrl: fields[4] as String?,
      wikiUrl: fields[5] as String?,
      stats: fields[6] as Stats,
      traits: (fields[7] as List).cast<String>(),
      details: fields[8] as Details,
      techniques: (fields[9] as List).cast<Technique>(),
      trivia: (fields[10] as List).cast<String>(),
      evolution: fields[11] as Evolution?,
      wikiPortraitUrlLarge: fields[12] as String?,
      lumaWikiPortraitUrlLarge: fields[13] as String?,
      locations: (fields[14] as List).cast<Location>(),
      icon: fields[15] as String?,
      lumaIcon: fields[16] as String?,
      genderRatio: fields[17] as GenderRatio,
      catchRate: fields[18] as int,
      hatchMins: fields[19] as double,
      tvYields: fields[20] as Stats,
      gameDescription: fields[21] as String?,
      wikiRenderStaticUrl: fields[22] as String?,
      wikiRenderAnimatedUrl: fields[23] as String?,
      wikiRenderStaticLumaUrl: fields[24] as String?,
      wikiRenderAnimatedLumaUrl: fields[25] as String?,
      renderStaticImage: fields[26] as String?,
      renderStaticLumaImage: fields[27] as String?,
      renderAnimatedImage: fields[28] as String?,
      renderAnimatedLumaImage: fields[29] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$_Temtem obj) {
    writer
      ..writeByte(30)
      ..writeByte(0)
      ..write(obj.number)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(3)
      ..write(obj.portraitWikiUrl)
      ..writeByte(4)
      ..write(obj.lumaPortraitWikiUrl)
      ..writeByte(5)
      ..write(obj.wikiUrl)
      ..writeByte(6)
      ..write(obj.stats)
      ..writeByte(8)
      ..write(obj.details)
      ..writeByte(11)
      ..write(obj.evolution)
      ..writeByte(12)
      ..write(obj.wikiPortraitUrlLarge)
      ..writeByte(13)
      ..write(obj.lumaWikiPortraitUrlLarge)
      ..writeByte(15)
      ..write(obj.icon)
      ..writeByte(16)
      ..write(obj.lumaIcon)
      ..writeByte(17)
      ..write(obj.genderRatio)
      ..writeByte(18)
      ..write(obj.catchRate)
      ..writeByte(19)
      ..write(obj.hatchMins)
      ..writeByte(20)
      ..write(obj.tvYields)
      ..writeByte(21)
      ..write(obj.gameDescription)
      ..writeByte(22)
      ..write(obj.wikiRenderStaticUrl)
      ..writeByte(23)
      ..write(obj.wikiRenderAnimatedUrl)
      ..writeByte(24)
      ..write(obj.wikiRenderStaticLumaUrl)
      ..writeByte(25)
      ..write(obj.wikiRenderAnimatedLumaUrl)
      ..writeByte(26)
      ..write(obj.renderStaticImage)
      ..writeByte(27)
      ..write(obj.renderStaticLumaImage)
      ..writeByte(28)
      ..write(obj.renderAnimatedImage)
      ..writeByte(29)
      ..write(obj.renderAnimatedLumaImage)
      ..writeByte(2)
      ..write(obj.types)
      ..writeByte(7)
      ..write(obj.traits)
      ..writeByte(9)
      ..write(obj.techniques)
      ..writeByte(10)
      ..write(obj.trivia)
      ..writeByte(14)
      ..write(obj.locations);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TemtemAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Temtem _$$_TemtemFromJson(Map<String, dynamic> json) => _$_Temtem(
      number: json['number'] as int,
      name: json['name'] as String?,
      types: json['types'] == null
          ? const <TemType>[]
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
      locations: (json['locations'] as List<dynamic>?)
              ?.map((e) => Location.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <Location>[],
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
      'locations': instance.locations,
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
