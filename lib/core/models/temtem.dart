import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

import 'details.dart';
import 'evolution.dart';
import 'gender_ratio.dart';
import 'location.dart';
import 'stats.dart';
import 'technique.dart';
import 'type.dart';

part 'temtem.freezed.dart';
part 'temtem.g.dart';

@freezed
class Temtem with _$Temtem {
  @HiveType(typeId: 1, adapterName: 'TemtemAdapter')
  factory Temtem({
    @HiveField(0) required int number,
    @HiveField(1) String? name,
    @TypeListConverter()
    @Default(<TemType>[])
    @HiveField(2)
        List<TemType> types,
    @HiveField(3) String? portraitWikiUrl,
    @HiveField(4) String? lumaPortraitWikiUrl,
    @HiveField(5) String? wikiUrl,
    @Default(Stats()) @HiveField(6) Stats stats,
    @Default(<String>[]) @HiveField(7) List<String> traits,
    @Default(Details()) @HiveField(8) Details details,
    @Default(<Technique>[]) @HiveField(9) List<Technique> techniques,
    @Default(<String>[]) @HiveField(10) List<String> trivia,
    @HiveField(11) Evolution? evolution,
    @HiveField(12) String? wikiPortraitUrlLarge,
    @HiveField(13) String? lumaWikiPortraitUrlLarge,
    @Default(<Location>[]) @HiveField(14) List<Location> locations,
    @HiveField(15) String? icon,
    @HiveField(16) String? lumaIcon,
    @Default(GenderRatio()) @HiveField(17) GenderRatio genderRatio,
    @Default(0) @HiveField(18) int catchRate,
    @Default(0) @HiveField(19) double hatchMins,
    @Default(Stats()) @HiveField(20) Stats tvYields,
    @HiveField(21) String? gameDescription,
    @HiveField(22) String? wikiRenderStaticUrl,
    @HiveField(23) String? wikiRenderAnimatedUrl,
    @HiveField(24) String? wikiRenderStaticLumaUrl,
    @HiveField(25) String? wikiRenderAnimatedLumaUrl,
    @HiveField(26) String? renderStaticImage,
    @HiveField(27) String? renderStaticLumaImage,
    @HiveField(28) String? renderAnimatedImage,
    @HiveField(29) String? renderAnimatedLumaImage,
  }) = _Temtem;

  Temtem._();

  factory Temtem.fromJson(Map<String, dynamic> json) => _$TemtemFromJson(json);
}
