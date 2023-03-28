import 'package:freezed_annotation/freezed_annotation.dart';

import 'details.dart';
import 'stats.dart';
import 'technique.dart';
import 'type.dart';

part 'temtem.freezed.dart';
part 'temtem.g.dart';

@freezed
class Temtem with _$Temtem {
  const factory Temtem({
    int? number,
    String? name,
    @TypeListConverter() @Default(<Type>[]) List<Type> types,
    String? portraitWikiUrl,
    String? wikiUrl,
    @Default(Stats()) Stats stats,
    @Default(<String>[]) List<String> traits,
    @Default(Details()) Details details,
    @Default(<Technique>[]) List<Technique> techniques,
  }) = _Temtem;

  factory Temtem.fromJson(Map<String, dynamic> json) => _$TemtemFromJson(json);
}
