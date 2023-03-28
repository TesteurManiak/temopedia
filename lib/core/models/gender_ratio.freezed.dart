// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gender_ratio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GenderRatio _$GenderRatioFromJson(Map<String, dynamic> json) {
  return _GenderRatio.fromJson(json);
}

/// @nodoc
mixin _$GenderRatio {
  int get male => throw _privateConstructorUsedError;
  int get female => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GenderRatioCopyWith<GenderRatio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GenderRatioCopyWith<$Res> {
  factory $GenderRatioCopyWith(
          GenderRatio value, $Res Function(GenderRatio) then) =
      _$GenderRatioCopyWithImpl<$Res, GenderRatio>;
  @useResult
  $Res call({int male, int female});
}

/// @nodoc
class _$GenderRatioCopyWithImpl<$Res, $Val extends GenderRatio>
    implements $GenderRatioCopyWith<$Res> {
  _$GenderRatioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? male = null,
    Object? female = null,
  }) {
    return _then(_value.copyWith(
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as int,
      female: null == female
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GenderRatioCopyWith<$Res>
    implements $GenderRatioCopyWith<$Res> {
  factory _$$_GenderRatioCopyWith(
          _$_GenderRatio value, $Res Function(_$_GenderRatio) then) =
      __$$_GenderRatioCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int male, int female});
}

/// @nodoc
class __$$_GenderRatioCopyWithImpl<$Res>
    extends _$GenderRatioCopyWithImpl<$Res, _$_GenderRatio>
    implements _$$_GenderRatioCopyWith<$Res> {
  __$$_GenderRatioCopyWithImpl(
      _$_GenderRatio _value, $Res Function(_$_GenderRatio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? male = null,
    Object? female = null,
  }) {
    return _then(_$_GenderRatio(
      male: null == male
          ? _value.male
          : male // ignore: cast_nullable_to_non_nullable
              as int,
      female: null == female
          ? _value.female
          : female // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GenderRatio implements _GenderRatio {
  const _$_GenderRatio({this.male = 0, this.female = 0});

  factory _$_GenderRatio.fromJson(Map<String, dynamic> json) =>
      _$$_GenderRatioFromJson(json);

  @override
  @JsonKey()
  final int male;
  @override
  @JsonKey()
  final int female;

  @override
  String toString() {
    return 'GenderRatio(male: $male, female: $female)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GenderRatio &&
            (identical(other.male, male) || other.male == male) &&
            (identical(other.female, female) || other.female == female));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, male, female);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GenderRatioCopyWith<_$_GenderRatio> get copyWith =>
      __$$_GenderRatioCopyWithImpl<_$_GenderRatio>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GenderRatioToJson(
      this,
    );
  }
}

abstract class _GenderRatio implements GenderRatio {
  const factory _GenderRatio({final int male, final int female}) =
      _$_GenderRatio;

  factory _GenderRatio.fromJson(Map<String, dynamic> json) =
      _$_GenderRatio.fromJson;

  @override
  int get male;
  @override
  int get female;
  @override
  @JsonKey(ignore: true)
  _$$_GenderRatioCopyWith<_$_GenderRatio> get copyWith =>
      throw _privateConstructorUsedError;
}
