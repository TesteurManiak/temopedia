// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Result<Type, Error> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type value) success,
    required TResult Function(Error error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type value)? success,
    TResult? Function(Error error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type value)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<Type, Error> value) success,
    required TResult Function(_Failure<Type, Error> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<Type, Error> value)? success,
    TResult? Function(_Failure<Type, Error> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<Type, Error> value)? success,
    TResult Function(_Failure<Type, Error> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultCopyWith<Type, Error, $Res> {
  factory $ResultCopyWith(
          Result<Type, Error> value, $Res Function(Result<Type, Error>) then) =
      _$ResultCopyWithImpl<Type, Error, $Res, Result<Type, Error>>;
}

/// @nodoc
class _$ResultCopyWithImpl<Type, Error, $Res, $Val extends Result<Type, Error>>
    implements $ResultCopyWith<Type, Error, $Res> {
  _$ResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SuccessCopyWith<Type, Error, $Res> {
  factory _$$_SuccessCopyWith(_$_Success<Type, Error> value,
          $Res Function(_$_Success<Type, Error>) then) =
      __$$_SuccessCopyWithImpl<Type, Error, $Res>;
  @useResult
  $Res call({Type value});
}

/// @nodoc
class __$$_SuccessCopyWithImpl<Type, Error, $Res>
    extends _$ResultCopyWithImpl<Type, Error, $Res, _$_Success<Type, Error>>
    implements _$$_SuccessCopyWith<Type, Error, $Res> {
  __$$_SuccessCopyWithImpl(_$_Success<Type, Error> _value,
      $Res Function(_$_Success<Type, Error>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_Success<Type, Error>(
      freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$_Success<Type, Error> implements _Success<Type, Error> {
  const _$_Success(this.value);

  @override
  final Type value;

  @override
  String toString() {
    return 'Result<$Type, $Error>.success(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Success<Type, Error> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SuccessCopyWith<Type, Error, _$_Success<Type, Error>> get copyWith =>
      __$$_SuccessCopyWithImpl<Type, Error, _$_Success<Type, Error>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type value) success,
    required TResult Function(Error error) failure,
  }) {
    return success(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type value)? success,
    TResult? Function(Error error)? failure,
  }) {
    return success?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type value)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<Type, Error> value) success,
    required TResult Function(_Failure<Type, Error> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<Type, Error> value)? success,
    TResult? Function(_Failure<Type, Error> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<Type, Error> value)? success,
    TResult Function(_Failure<Type, Error> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success<Type, Error> implements Result<Type, Error> {
  const factory _Success(final Type value) = _$_Success<Type, Error>;

  Type get value;
  @JsonKey(ignore: true)
  _$$_SuccessCopyWith<Type, Error, _$_Success<Type, Error>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FailureCopyWith<Type, Error, $Res> {
  factory _$$_FailureCopyWith(_$_Failure<Type, Error> value,
          $Res Function(_$_Failure<Type, Error>) then) =
      __$$_FailureCopyWithImpl<Type, Error, $Res>;
  @useResult
  $Res call({Error error});
}

/// @nodoc
class __$$_FailureCopyWithImpl<Type, Error, $Res>
    extends _$ResultCopyWithImpl<Type, Error, $Res, _$_Failure<Type, Error>>
    implements _$$_FailureCopyWith<Type, Error, $Res> {
  __$$_FailureCopyWithImpl(_$_Failure<Type, Error> _value,
      $Res Function(_$_Failure<Type, Error>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_Failure<Type, Error>(
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Error,
    ));
  }
}

/// @nodoc

class _$_Failure<Type, Error> implements _Failure<Type, Error> {
  const _$_Failure(this.error);

  @override
  final Error error;

  @override
  String toString() {
    return 'Result<$Type, $Error>.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure<Type, Error> &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FailureCopyWith<Type, Error, _$_Failure<Type, Error>> get copyWith =>
      __$$_FailureCopyWithImpl<Type, Error, _$_Failure<Type, Error>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Type value) success,
    required TResult Function(Error error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Type value)? success,
    TResult? Function(Error error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Type value)? success,
    TResult Function(Error error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Success<Type, Error> value) success,
    required TResult Function(_Failure<Type, Error> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Success<Type, Error> value)? success,
    TResult? Function(_Failure<Type, Error> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Success<Type, Error> value)? success,
    TResult Function(_Failure<Type, Error> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure<Type, Error> implements Result<Type, Error> {
  const factory _Failure(final Error error) = _$_Failure<Type, Error>;

  Error get error;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<Type, Error, _$_Failure<Type, Error>> get copyWith =>
      throw _privateConstructorUsedError;
}
