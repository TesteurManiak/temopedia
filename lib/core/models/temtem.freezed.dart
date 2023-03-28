// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temtem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Temtem _$TemtemFromJson(Map<String, dynamic> json) {
  return _Temtem.fromJson(json);
}

/// @nodoc
mixin _$Temtem {
  int? get number => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @TypeListConverter()
  List<Type> get types => throw _privateConstructorUsedError;
  String? get portraitWikiUrl => throw _privateConstructorUsedError;
  String? get wikiUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TemtemCopyWith<Temtem> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemtemCopyWith<$Res> {
  factory $TemtemCopyWith(Temtem value, $Res Function(Temtem) then) =
      _$TemtemCopyWithImpl<$Res, Temtem>;
  @useResult
  $Res call(
      {int? number,
      String? name,
      @TypeListConverter() List<Type> types,
      String? portraitWikiUrl,
      String? wikiUrl});
}

/// @nodoc
class _$TemtemCopyWithImpl<$Res, $Val extends Temtem>
    implements $TemtemCopyWith<$Res> {
  _$TemtemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? types = null,
    Object? portraitWikiUrl = freezed,
    Object? wikiUrl = freezed,
  }) {
    return _then(_value.copyWith(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      portraitWikiUrl: freezed == portraitWikiUrl
          ? _value.portraitWikiUrl
          : portraitWikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiUrl: freezed == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TemtemCopyWith<$Res> implements $TemtemCopyWith<$Res> {
  factory _$$_TemtemCopyWith(_$_Temtem value, $Res Function(_$_Temtem) then) =
      __$$_TemtemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? number,
      String? name,
      @TypeListConverter() List<Type> types,
      String? portraitWikiUrl,
      String? wikiUrl});
}

/// @nodoc
class __$$_TemtemCopyWithImpl<$Res>
    extends _$TemtemCopyWithImpl<$Res, _$_Temtem>
    implements _$$_TemtemCopyWith<$Res> {
  __$$_TemtemCopyWithImpl(_$_Temtem _value, $Res Function(_$_Temtem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = freezed,
    Object? name = freezed,
    Object? types = null,
    Object? portraitWikiUrl = freezed,
    Object? wikiUrl = freezed,
  }) {
    return _then(_$_Temtem(
      number: freezed == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<Type>,
      portraitWikiUrl: freezed == portraitWikiUrl
          ? _value.portraitWikiUrl
          : portraitWikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiUrl: freezed == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Temtem implements _Temtem {
  const _$_Temtem(
      {this.number,
      this.name,
      @TypeListConverter() final List<Type> types = const <Type>[],
      this.portraitWikiUrl,
      this.wikiUrl})
      : _types = types;

  factory _$_Temtem.fromJson(Map<String, dynamic> json) =>
      _$$_TemtemFromJson(json);

  @override
  final int? number;
  @override
  final String? name;
  final List<Type> _types;
  @override
  @JsonKey()
  @TypeListConverter()
  List<Type> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  final String? portraitWikiUrl;
  @override
  final String? wikiUrl;

  @override
  String toString() {
    return 'Temtem(number: $number, name: $name, types: $types, portraitWikiUrl: $portraitWikiUrl, wikiUrl: $wikiUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Temtem &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._types, _types) &&
            (identical(other.portraitWikiUrl, portraitWikiUrl) ||
                other.portraitWikiUrl == portraitWikiUrl) &&
            (identical(other.wikiUrl, wikiUrl) || other.wikiUrl == wikiUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, name,
      const DeepCollectionEquality().hash(_types), portraitWikiUrl, wikiUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TemtemCopyWith<_$_Temtem> get copyWith =>
      __$$_TemtemCopyWithImpl<_$_Temtem>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TemtemToJson(
      this,
    );
  }
}

abstract class _Temtem implements Temtem {
  const factory _Temtem(
      {final int? number,
      final String? name,
      @TypeListConverter() final List<Type> types,
      final String? portraitWikiUrl,
      final String? wikiUrl}) = _$_Temtem;

  factory _Temtem.fromJson(Map<String, dynamic> json) = _$_Temtem.fromJson;

  @override
  int? get number;
  @override
  String? get name;
  @override
  @TypeListConverter()
  List<Type> get types;
  @override
  String? get portraitWikiUrl;
  @override
  String? get wikiUrl;
  @override
  @JsonKey(ignore: true)
  _$$_TemtemCopyWith<_$_Temtem> get copyWith =>
      throw _privateConstructorUsedError;
}
