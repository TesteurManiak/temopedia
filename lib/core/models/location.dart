import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    String? location,
    String? place,
    String? note,
    String? island,
    String? frequency,
    String? level,
    Freetem? freetem,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Freetem with _$Freetem {
  const factory Freetem({
    @Default(0) int minLevel,
    @Default(0) int maxLevel,
    @Default(0) int minPansuns,
    @Default(0) int maxPansuns,
  }) = _Freetem;

  factory Freetem.fromJson(Map<String, dynamic> json) =>
      _$FreetemFromJson(json);
}
