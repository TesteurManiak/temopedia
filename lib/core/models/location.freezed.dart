// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get location => throw _privateConstructorUsedError;
  String? get place => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;
  String? get island => throw _privateConstructorUsedError;
  String? get frequency => throw _privateConstructorUsedError;
  String? get level => throw _privateConstructorUsedError;
  Freetem? get freetem => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {String? location,
      String? place,
      String? note,
      String? island,
      String? frequency,
      String? level,
      Freetem? freetem});

  $FreetemCopyWith<$Res>? get freetem;
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? place = freezed,
    Object? note = freezed,
    Object? island = freezed,
    Object? frequency = freezed,
    Object? level = freezed,
    Object? freetem = freezed,
  }) {
    return _then(_value.copyWith(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      island: freezed == island
          ? _value.island
          : island // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      freetem: freezed == freetem
          ? _value.freetem
          : freetem // ignore: cast_nullable_to_non_nullable
              as Freetem?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FreetemCopyWith<$Res>? get freetem {
    if (_value.freetem == null) {
      return null;
    }

    return $FreetemCopyWith<$Res>(_value.freetem!, (value) {
      return _then(_value.copyWith(freetem: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LocationCopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$_LocationCopyWith(
          _$_Location value, $Res Function(_$_Location) then) =
      __$$_LocationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? location,
      String? place,
      String? note,
      String? island,
      String? frequency,
      String? level,
      Freetem? freetem});

  @override
  $FreetemCopyWith<$Res>? get freetem;
}

/// @nodoc
class __$$_LocationCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$_Location>
    implements _$$_LocationCopyWith<$Res> {
  __$$_LocationCopyWithImpl(
      _$_Location _value, $Res Function(_$_Location) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = freezed,
    Object? place = freezed,
    Object? note = freezed,
    Object? island = freezed,
    Object? frequency = freezed,
    Object? level = freezed,
    Object? freetem = freezed,
  }) {
    return _then(_$_Location(
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      place: freezed == place
          ? _value.place
          : place // ignore: cast_nullable_to_non_nullable
              as String?,
      note: freezed == note
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
      island: freezed == island
          ? _value.island
          : island // ignore: cast_nullable_to_non_nullable
              as String?,
      frequency: freezed == frequency
          ? _value.frequency
          : frequency // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as String?,
      freetem: freezed == freetem
          ? _value.freetem
          : freetem // ignore: cast_nullable_to_non_nullable
              as Freetem?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Location implements _Location {
  const _$_Location(
      {this.location,
      this.place,
      this.note,
      this.island,
      this.frequency,
      this.level,
      this.freetem});

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  final String? location;
  @override
  final String? place;
  @override
  final String? note;
  @override
  final String? island;
  @override
  final String? frequency;
  @override
  final String? level;
  @override
  final Freetem? freetem;

  @override
  String toString() {
    return 'Location(location: $location, place: $place, note: $note, island: $island, frequency: $frequency, level: $level, freetem: $freetem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Location &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.place, place) || other.place == place) &&
            (identical(other.note, note) || other.note == note) &&
            (identical(other.island, island) || other.island == island) &&
            (identical(other.frequency, frequency) ||
                other.frequency == frequency) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.freetem, freetem) || other.freetem == freetem));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, location, place, note, island, frequency, level, freetem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      __$$_LocationCopyWithImpl<_$_Location>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocationToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final String? location,
      final String? place,
      final String? note,
      final String? island,
      final String? frequency,
      final String? level,
      final Freetem? freetem}) = _$_Location;

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  String? get location;
  @override
  String? get place;
  @override
  String? get note;
  @override
  String? get island;
  @override
  String? get frequency;
  @override
  String? get level;
  @override
  Freetem? get freetem;
  @override
  @JsonKey(ignore: true)
  _$$_LocationCopyWith<_$_Location> get copyWith =>
      throw _privateConstructorUsedError;
}

Freetem _$FreetemFromJson(Map<String, dynamic> json) {
  return _Freetem.fromJson(json);
}

/// @nodoc
mixin _$Freetem {
  int get minLevel => throw _privateConstructorUsedError;
  int get maxLevel => throw _privateConstructorUsedError;
  int get minPansuns => throw _privateConstructorUsedError;
  int get maxPansuns => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FreetemCopyWith<Freetem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FreetemCopyWith<$Res> {
  factory $FreetemCopyWith(Freetem value, $Res Function(Freetem) then) =
      _$FreetemCopyWithImpl<$Res, Freetem>;
  @useResult
  $Res call({int minLevel, int maxLevel, int minPansuns, int maxPansuns});
}

/// @nodoc
class _$FreetemCopyWithImpl<$Res, $Val extends Freetem>
    implements $FreetemCopyWith<$Res> {
  _$FreetemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLevel = null,
    Object? maxLevel = null,
    Object? minPansuns = null,
    Object? maxPansuns = null,
  }) {
    return _then(_value.copyWith(
      minLevel: null == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int,
      maxLevel: null == maxLevel
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      minPansuns: null == minPansuns
          ? _value.minPansuns
          : minPansuns // ignore: cast_nullable_to_non_nullable
              as int,
      maxPansuns: null == maxPansuns
          ? _value.maxPansuns
          : maxPansuns // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FreetemCopyWith<$Res> implements $FreetemCopyWith<$Res> {
  factory _$$_FreetemCopyWith(
          _$_Freetem value, $Res Function(_$_Freetem) then) =
      __$$_FreetemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int minLevel, int maxLevel, int minPansuns, int maxPansuns});
}

/// @nodoc
class __$$_FreetemCopyWithImpl<$Res>
    extends _$FreetemCopyWithImpl<$Res, _$_Freetem>
    implements _$$_FreetemCopyWith<$Res> {
  __$$_FreetemCopyWithImpl(_$_Freetem _value, $Res Function(_$_Freetem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLevel = null,
    Object? maxLevel = null,
    Object? minPansuns = null,
    Object? maxPansuns = null,
  }) {
    return _then(_$_Freetem(
      minLevel: null == minLevel
          ? _value.minLevel
          : minLevel // ignore: cast_nullable_to_non_nullable
              as int,
      maxLevel: null == maxLevel
          ? _value.maxLevel
          : maxLevel // ignore: cast_nullable_to_non_nullable
              as int,
      minPansuns: null == minPansuns
          ? _value.minPansuns
          : minPansuns // ignore: cast_nullable_to_non_nullable
              as int,
      maxPansuns: null == maxPansuns
          ? _value.maxPansuns
          : maxPansuns // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Freetem implements _Freetem {
  const _$_Freetem(
      {this.minLevel = 0,
      this.maxLevel = 0,
      this.minPansuns = 0,
      this.maxPansuns = 0});

  factory _$_Freetem.fromJson(Map<String, dynamic> json) =>
      _$$_FreetemFromJson(json);

  @override
  @JsonKey()
  final int minLevel;
  @override
  @JsonKey()
  final int maxLevel;
  @override
  @JsonKey()
  final int minPansuns;
  @override
  @JsonKey()
  final int maxPansuns;

  @override
  String toString() {
    return 'Freetem(minLevel: $minLevel, maxLevel: $maxLevel, minPansuns: $minPansuns, maxPansuns: $maxPansuns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Freetem &&
            (identical(other.minLevel, minLevel) ||
                other.minLevel == minLevel) &&
            (identical(other.maxLevel, maxLevel) ||
                other.maxLevel == maxLevel) &&
            (identical(other.minPansuns, minPansuns) ||
                other.minPansuns == minPansuns) &&
            (identical(other.maxPansuns, maxPansuns) ||
                other.maxPansuns == maxPansuns));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minLevel, maxLevel, minPansuns, maxPansuns);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FreetemCopyWith<_$_Freetem> get copyWith =>
      __$$_FreetemCopyWithImpl<_$_Freetem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FreetemToJson(
      this,
    );
  }
}

abstract class _Freetem implements Freetem {
  const factory _Freetem(
      {final int minLevel,
      final int maxLevel,
      final int minPansuns,
      final int maxPansuns}) = _$_Freetem;

  factory _Freetem.fromJson(Map<String, dynamic> json) = _$_Freetem.fromJson;

  @override
  int get minLevel;
  @override
  int get maxLevel;
  @override
  int get minPansuns;
  @override
  int get maxPansuns;
  @override
  @JsonKey(ignore: true)
  _$$_FreetemCopyWith<_$_Freetem> get copyWith =>
      throw _privateConstructorUsedError;
}
