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
  @HiveField(0)
  String? get location => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get place => throw _privateConstructorUsedError;
  @HiveField(2)
  String? get note => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get island => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get frequency => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get level => throw _privateConstructorUsedError;
  @HiveField(6)
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
      {@HiveField(0) String? location,
      @HiveField(1) String? place,
      @HiveField(2) String? note,
      @HiveField(3) String? island,
      @HiveField(4) String? frequency,
      @HiveField(5) String? level,
      @HiveField(6) Freetem? freetem});

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
      {@HiveField(0) String? location,
      @HiveField(1) String? place,
      @HiveField(2) String? note,
      @HiveField(3) String? island,
      @HiveField(4) String? frequency,
      @HiveField(5) String? level,
      @HiveField(6) Freetem? freetem});

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
@HiveType(typeId: 10, adapterName: 'LocationAdapter')
class _$_Location extends _Location {
  const _$_Location(
      {@HiveField(0) this.location,
      @HiveField(1) this.place,
      @HiveField(2) this.note,
      @HiveField(3) this.island,
      @HiveField(4) this.frequency,
      @HiveField(5) this.level,
      @HiveField(6) this.freetem})
      : super._();

  factory _$_Location.fromJson(Map<String, dynamic> json) =>
      _$$_LocationFromJson(json);

  @override
  @HiveField(0)
  final String? location;
  @override
  @HiveField(1)
  final String? place;
  @override
  @HiveField(2)
  final String? note;
  @override
  @HiveField(3)
  final String? island;
  @override
  @HiveField(4)
  final String? frequency;
  @override
  @HiveField(5)
  final String? level;
  @override
  @HiveField(6)
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

abstract class _Location extends Location {
  const factory _Location(
      {@HiveField(0) final String? location,
      @HiveField(1) final String? place,
      @HiveField(2) final String? note,
      @HiveField(3) final String? island,
      @HiveField(4) final String? frequency,
      @HiveField(5) final String? level,
      @HiveField(6) final Freetem? freetem}) = _$_Location;
  const _Location._() : super._();

  factory _Location.fromJson(Map<String, dynamic> json) = _$_Location.fromJson;

  @override
  @HiveField(0)
  String? get location;
  @override
  @HiveField(1)
  String? get place;
  @override
  @HiveField(2)
  String? get note;
  @override
  @HiveField(3)
  String? get island;
  @override
  @HiveField(4)
  String? get frequency;
  @override
  @HiveField(5)
  String? get level;
  @override
  @HiveField(6)
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
  @HiveField(0)
  int get minLevel => throw _privateConstructorUsedError;
  @HiveField(1)
  int get maxLevel => throw _privateConstructorUsedError;
  @HiveField(2)
  int get minPansuns => throw _privateConstructorUsedError;
  @HiveField(3)
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
  $Res call(
      {@HiveField(0) int minLevel,
      @HiveField(1) int maxLevel,
      @HiveField(2) int minPansuns,
      @HiveField(3) int maxPansuns});
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
  $Res call(
      {@HiveField(0) int minLevel,
      @HiveField(1) int maxLevel,
      @HiveField(2) int minPansuns,
      @HiveField(3) int maxPansuns});
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
@HiveType(typeId: 11, adapterName: 'FreetemAdapter')
class _$_Freetem extends _Freetem {
  const _$_Freetem(
      {@HiveField(0) this.minLevel = 0,
      @HiveField(1) this.maxLevel = 0,
      @HiveField(2) this.minPansuns = 0,
      @HiveField(3) this.maxPansuns = 0})
      : super._();

  factory _$_Freetem.fromJson(Map<String, dynamic> json) =>
      _$$_FreetemFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final int minLevel;
  @override
  @JsonKey()
  @HiveField(1)
  final int maxLevel;
  @override
  @JsonKey()
  @HiveField(2)
  final int minPansuns;
  @override
  @JsonKey()
  @HiveField(3)
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

abstract class _Freetem extends Freetem {
  const factory _Freetem(
      {@HiveField(0) final int minLevel,
      @HiveField(1) final int maxLevel,
      @HiveField(2) final int minPansuns,
      @HiveField(3) final int maxPansuns}) = _$_Freetem;
  const _Freetem._() : super._();

  factory _Freetem.fromJson(Map<String, dynamic> json) = _$_Freetem.fromJson;

  @override
  @HiveField(0)
  int get minLevel;
  @override
  @HiveField(1)
  int get maxLevel;
  @override
  @HiveField(2)
  int get minPansuns;
  @override
  @HiveField(3)
  int get maxPansuns;
  @override
  @JsonKey(ignore: true)
  _$$_FreetemCopyWith<_$_Freetem> get copyWith =>
      throw _privateConstructorUsedError;
}
