import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/adapters.dart';

part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  @HiveType(typeId: 10, adapterName: 'LocationAdapter')
  const factory Location({
    @HiveField(0) String? location,
    @HiveField(1) String? place,
    @HiveField(2) String? note,
    @HiveField(3) String? island,
    @HiveField(4) String? frequency,
    @HiveField(5) String? level,
    @HiveField(6) Freetem? freetem,
  }) = _Location;

  const Location._();

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class Freetem with _$Freetem {
  @HiveType(typeId: 11, adapterName: 'FreetemAdapter')
  const factory Freetem({
    @Default(0) @HiveField(0) int minLevel,
    @Default(0) @HiveField(1) int maxLevel,
    @Default(0) @HiveField(2) int minPansuns,
    @Default(0) @HiveField(3) int maxPansuns,
  }) = _Freetem;

  const Freetem._();

  factory Freetem.fromJson(Map<String, dynamic> json) =>
      _$FreetemFromJson(json);
}
