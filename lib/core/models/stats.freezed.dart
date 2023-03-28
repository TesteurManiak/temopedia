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
  int get hp => throw _privateConstructorUsedError;
  int get sta => throw _privateConstructorUsedError;
  int get spd => throw _privateConstructorUsedError;
  int get atk => throw _privateConstructorUsedError;
  int get def => throw _privateConstructorUsedError;
  int get spatk => throw _privateConstructorUsedError;
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
  $Res call({int hp, int sta, int spd, int atk, int def, int spatk, int spdef});
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
  $Res call({int hp, int sta, int spd, int atk, int def, int spatk, int spdef});
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
class _$_Stats extends _Stats {
  const _$_Stats(
      {this.hp = 0,
      this.sta = 0,
      this.spd = 0,
      this.atk = 0,
      this.def = 0,
      this.spatk = 0,
      this.spdef = 0})
      : super._();

  factory _$_Stats.fromJson(Map<String, dynamic> json) =>
      _$$_StatsFromJson(json);

  @override
  @JsonKey()
  final int hp;
  @override
  @JsonKey()
  final int sta;
  @override
  @JsonKey()
  final int spd;
  @override
  @JsonKey()
  final int atk;
  @override
  @JsonKey()
  final int def;
  @override
  @JsonKey()
  final int spatk;
  @override
  @JsonKey()
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
      {final int hp,
      final int sta,
      final int spd,
      final int atk,
      final int def,
      final int spatk,
      final int spdef}) = _$_Stats;
  const _Stats._() : super._();

  factory _Stats.fromJson(Map<String, dynamic> json) = _$_Stats.fromJson;

  @override
  int get hp;
  @override
  int get sta;
  @override
  int get spd;
  @override
  int get atk;
  @override
  int get def;
  @override
  int get spatk;
  @override
  int get spdef;
  @override
  @JsonKey(ignore: true)
  _$$_StatsCopyWith<_$_Stats> get copyWith =>
      throw _privateConstructorUsedError;
}
