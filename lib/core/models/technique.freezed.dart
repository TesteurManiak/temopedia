// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'technique.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Technique _$TechniqueFromJson(Map<String, dynamic> json) {
  return _Technique.fromJson(json);
}

/// @nodoc
mixin _$Technique {
  String? get name => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  int? get levels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TechniqueCopyWith<Technique> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TechniqueCopyWith<$Res> {
  factory $TechniqueCopyWith(Technique value, $Res Function(Technique) then) =
      _$TechniqueCopyWithImpl<$Res, Technique>;
  @useResult
  $Res call({String? name, String? source, int? levels});
}

/// @nodoc
class _$TechniqueCopyWithImpl<$Res, $Val extends Technique>
    implements $TechniqueCopyWith<$Res> {
  _$TechniqueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? source = freezed,
    Object? levels = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      levels: freezed == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TechniqueCopyWith<$Res> implements $TechniqueCopyWith<$Res> {
  factory _$$_TechniqueCopyWith(
          _$_Technique value, $Res Function(_$_Technique) then) =
      __$$_TechniqueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? source, int? levels});
}

/// @nodoc
class __$$_TechniqueCopyWithImpl<$Res>
    extends _$TechniqueCopyWithImpl<$Res, _$_Technique>
    implements _$$_TechniqueCopyWith<$Res> {
  __$$_TechniqueCopyWithImpl(
      _$_Technique _value, $Res Function(_$_Technique) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? source = freezed,
    Object? levels = freezed,
  }) {
    return _then(_$_Technique(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      levels: freezed == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Technique implements _Technique {
  const _$_Technique({this.name, this.source, this.levels});

  factory _$_Technique.fromJson(Map<String, dynamic> json) =>
      _$$_TechniqueFromJson(json);

  @override
  final String? name;
  @override
  final String? source;
  @override
  final int? levels;

  @override
  String toString() {
    return 'Technique(name: $name, source: $source, levels: $levels)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Technique &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.levels, levels) || other.levels == levels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, source, levels);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TechniqueCopyWith<_$_Technique> get copyWith =>
      __$$_TechniqueCopyWithImpl<_$_Technique>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TechniqueToJson(
      this,
    );
  }
}

abstract class _Technique implements Technique {
  const factory _Technique(
      {final String? name,
      final String? source,
      final int? levels}) = _$_Technique;

  factory _Technique.fromJson(Map<String, dynamic> json) =
      _$_Technique.fromJson;

  @override
  String? get name;
  @override
  String? get source;
  @override
  int? get levels;
  @override
  @JsonKey(ignore: true)
  _$$_TechniqueCopyWith<_$_Technique> get copyWith =>
      throw _privateConstructorUsedError;
}
