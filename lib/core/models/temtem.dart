import 'package:freezed_annotation/freezed_annotation.dart';

import 'details.dart';
import 'evolution.dart';
import 'gender_ratio.dart';
import 'stats.dart';
import 'technique.dart';
import 'type.dart';

part 'temtem.freezed.dart';
part 'temtem.g.dart';

@freezed
class Temtem with _$Temtem {
  const factory Temtem({
    required int number,
    String? name,
    @TypeListConverter() @Default(<Type>[]) List<Type> types,
    String? portraitWikiUrl,
    String? wikiUrl,
    @Default(Stats()) Stats stats,
    @Default(<String>[]) List<String> traits,
    @Default(Details()) Details details,
    @Default(<Technique>[]) List<Technique> techniques,
    @Default(<String>[]) List<String> trivia,
    Evolution? evolution,
    String? wikiPortraitUrlLarge,
    String? icon,
    String? lumaIcon,
    @Default(GenderRatio()) GenderRatio genderRatio,
    @Default(0) int catchRate,
    @Default(0) double hatchMins,
    @Default(Stats()) Stats tvYields,
    String? gameDescription,
    String? wikiRenderStaticUrl,
    String? wikiRenderAnimatedUrl,
    String? wikiRenderStaticLumaUrl,
    String? wikiRenderAnimatedLumaUrl,
    String? renderStaticImage,
    String? renderStaticLumaImage,
    String? renderAnimatedImage,
    String? renderAnimatedLumaImage,
  }) = _Temtem;

  factory Temtem.fromJson(Map<String, dynamic> json) => _$TemtemFromJson(json);
}
