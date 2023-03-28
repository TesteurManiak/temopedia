import 'package:freezed_annotation/freezed_annotation.dart';

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
  }) = _Temtem;

  factory Temtem.fromJson(Map<String, dynamic> json) => _$TemtemFromJson(json);
}
