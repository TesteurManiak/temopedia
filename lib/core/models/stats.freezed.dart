// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Stats _$StatsFromJson(Map<String, dynamic> json) {
  return _Stats.fromJson(json);
}

/// @nodoc
mixin _$Stats {
  @HiveField(0)
  int get hp => throw _privateConstructorUsedError;
  @HiveField(1)
  int get sta => throw _privateConstructorUsedError;
  @HiveField(2)
  int get spd => throw _privateConstructorUsedError;
  @HiveField(3)
  int get atk => throw _privateConstructorUsedError;
  @HiveField(4)
  int get def => throw _privateConstructorUsedError;
  @HiveField(5)
  int get spatk => throw _privateConstructorUsedError;
  @HiveField(6)
  int get spdef => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsCopyWith<Stats> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsCopyWith<$Res> {
  factory $StatsCopyWith(Stats value, $Res Function(Stats) then) =
      _$StatsCopyWithImpl<$Res, Stats>;
  @useResult
  $Res call(
      {@HiveField(0) int hp,
      @HiveField(1) int sta,
      @HiveField(2) int spd,
      @HiveField(3) int atk,
      @HiveField(4) int def,
      @HiveField(5) int spatk,
      @HiveField(6) int spdef});
}

/// @nodoc
class _$StatsCopyWithImpl<$Res, $Val extends Stats>
    implements $StatsCopyWith<$Res> {
  _$StatsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hp = null,
    Object? sta = null,
    Object? spd = null,
    Object? atk = null,
    Object? def = null,
    Object? spatk = null,
    Object? spdef = null,
  }) {
    return _then(_value.copyWith(
      hp: null == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as int,
      sta: null == sta
          ? _value.sta
          : sta // ignore: cast_nullable_to_non_nullable
              as int,
      spd: null == spd
          ? _value.spd
          : spd // ignore: cast_nullable_to_non_nullable
              as int,
      atk: null == atk
          ? _value.atk
          : atk // ignore: cast_nullable_to_non_nullable
              as int,
      def: null == def
          ? _value.def
          : def // ignore: cast_nullable_to_non_nullable
              as int,
      spatk: null == spatk
          ? _value.spatk
          : spatk // ignore: cast_nullable_to_non_nullable
              as int,
      spdef: null == spdef
          ? _value.spdef
          : spdef // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StatsCopyWith<$Res> implements $StatsCopyWith<$Res> {
  factory _$$_StatsCopyWith(_$_Stats value, $Res Function(_$_Stats) then) =
      __$$_StatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int hp,
      @HiveField(1) int sta,
      @HiveField(2) int spd,
      @HiveField(3) int atk,
      @HiveField(4) int def,
      @HiveField(5) int spatk,
      @HiveField(6) int spdef});
}

/// @nodoc
class __$$_StatsCopyWithImpl<$Res> extends _$StatsCopyWithImpl<$Res, _$_Stats>
    implements _$$_StatsCopyWith<$Res> {
  __$$_StatsCopyWithImpl(_$_Stats _value, $Res Function(_$_Stats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? hp = null,
    Object? sta = null,
    Object? spd = null,
    Object? atk = null,
    Object? def = null,
    Object? spatk = null,
    Object? spdef = null,
  }) {
    return _then(_$_Stats(
      hp: null == hp
          ? _value.hp
          : hp // ignore: cast_nullable_to_non_nullable
              as int,
      sta: null == sta
          ? _value.sta
          : sta // ignore: cast_nullable_to_non_nullable
              as int,
      spd: null == spd
          ? _value.spd
          : spd // ignore: cast_nullable_to_non_nullable
              as int,
      atk: null == atk
          ? _value.atk
          : atk // ignore: cast_nullable_to_non_nullable
              as int,
      def: null == def
          ? _value.def
          : def // ignore: cast_nullable_to_non_nullable
              as int,
      spatk: null == spatk
          ? _value.spatk
          : spatk // ignore: cast_nullable_to_non_nullable
              as int,
      spdef: null == spdef
          ? _value.spdef
          : spdef // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 3, adapterName: 'StatsAdapter')
class _$_Stats extends _Stats {
  const _$_Stats(
      {@HiveField(0) this.hp = 0,
      @HiveField(1) this.sta = 0,
      @HiveField(2) this.spd = 0,
      @HiveField(3) this.atk = 0,
      @HiveField(4) this.def = 0,
      @HiveField(5) this.spatk = 0,
      @HiveField(6) this.spdef = 0})
      : super._();

  factory _$_Stats.fromJson(Map<String, dynamic> json) =>
      _$$_StatsFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final int hp;
  @override
  @JsonKey()
  @HiveField(1)
  final int sta;
  @override
  @JsonKey()
  @HiveField(2)
  final int spd;
  @override
  @JsonKey()
  @HiveField(3)
  final int atk;
  @override
  @JsonKey()
  @HiveField(4)
  final int def;
  @override
  @JsonKey()
  @HiveField(5)
  final int spatk;
  @override
  @JsonKey()
  @HiveField(6)
  final int spdef;

  @override
  String toString() {
    return 'Stats(hp: $hp, sta: $sta, spd: $spd, atk: $atk, def: $def, spatk: $spatk, spdef: $spdef)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Stats &&
            (identical(other.hp, hp) || other.hp == hp) &&
            (identical(other.sta, sta) || other.sta == sta) &&
            (identical(other.spd, spd) || other.spd == spd) &&
            (identical(other.atk, atk) || other.atk == atk) &&
            (identical(other.def, def) || other.def == def) &&
            (identical(other.spatk, spatk) || other.spatk == spatk) &&
            (identical(other.spdef, spdef) || other.spdef == spdef));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, hp, sta, spd, atk, def, spatk, spdef);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      __$$_StatsCopyWithImpl<_$_Stats>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_StatsToJson(
      this,
    );
  }
}

abstract class _Stats extends Stats {
  const factory _Stats(
      {@HiveField(0) final int hp,
      @HiveField(1) final int sta,
      @HiveField(2) final int spd,
      @HiveField(3) final int atk,
      @HiveField(4) final int def,
      @HiveField(5) final int spatk,
      @HiveField(6) final int spdef}) = _$_Stats;
  const _Stats._() : super._();

  factory _Stats.fromJson(Map<String, dynamic> json) = _$_Stats.fromJson;

  @override
  @HiveField(0)
  int get hp;
  @override
  @HiveField(1)
  int get sta;
  @override
  @HiveField(2)
  int get spd;
  @override
  @HiveField(3)
  int get atk;
  @override
  @HiveField(4)
  int get def;
  @override
  @HiveField(5)
  int get spatk;
  @override
  @HiveField(6)
  int get spdef;
  @override
  @JsonKey(ignore: true)
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      throw _privateConstructorUsedError;
}
