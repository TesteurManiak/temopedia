// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AppError _$AppErrorFromJson(Map<String, dynamic> json) {
  return _AppError.fromJson(json);
}

/// @nodoc
mixin _$AppError {
  String? get type => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AppErrorCopyWith<AppError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppErrorCopyWith<$Res> {
  factory $AppErrorCopyWith(AppError value, $Res Function(AppError) then) =
      _$AppErrorCopyWithImpl<$Res, AppError>;
  @useResult
  $Res call({String? type, String? error});
}

/// @nodoc
class _$AppErrorCopyWithImpl<$Res, $Val extends AppError>
    implements $AppErrorCopyWith<$Res> {
  _$AppErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AppErrorCopyWith<$Res> implements $AppErrorCopyWith<$Res> {
  factory _$$_AppErrorCopyWith(
          _$_AppError value, $Res Function(_$_AppError) then) =
      __$$_AppErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? type, String? error});
}

/// @nodoc
class __$$_AppErrorCopyWithImpl<$Res>
    extends _$AppErrorCopyWithImpl<$Res, _$_AppError>
    implements _$$_AppErrorCopyWith<$Res> {
  __$$_AppErrorCopyWithImpl(
      _$_AppError _value, $Res Function(_$_AppError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_AppError(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AppError implements _AppError {
  const _$_AppError({this.type, this.error});

  factory _$_AppError.fromJson(Map<String, dynamic> json) =>
      _$$_AppErrorFromJson(json);

  @override
  final String? type;
  @override
  final String? error;

  @override
  String toString() {
    return 'AppError(type: $type, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppError &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppErrorCopyWith<_$_AppError> get copyWith =>
      __$$_AppErrorCopyWithImpl<_$_AppError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AppErrorToJson(
      this,
    );
  }
}

abstract class _AppError implements AppError {
  const factory _AppError({final String? type, final String? error}) =
      _$_AppError;

  factory _AppError.fromJson(Map<String, dynamic> json) = _$_AppError.fromJson;

  @override
  String? get type;
  @override
  String? get error;
  @override
  @JsonKey(ignore: true)
  _$$_AppErrorCopyWith<_$_AppError> get copyWith =>
      throw _privateConstructorUsedError;
}
