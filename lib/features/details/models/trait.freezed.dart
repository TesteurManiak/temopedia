// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'trait.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Trait _$TraitFromJson(Map<String, dynamic> json) {
  return _Trait.fromJson(json);
}

/// @nodoc
mixin _$Trait {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String get wikiUrl => throw _privateConstructorUsedError;
  @HiveField(2)
  String get description => throw _privateConstructorUsedError;
  @HiveField(3)
  String get effect => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TraitCopyWith<Trait> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraitCopyWith<$Res> {
  factory $TraitCopyWith(Trait value, $Res Function(Trait) then) =
      _$TraitCopyWithImpl<$Res, Trait>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String wikiUrl,
      @HiveField(2) String description,
      @HiveField(3) String effect});
}

/// @nodoc
class _$TraitCopyWithImpl<$Res, $Val extends Trait>
    implements $TraitCopyWith<$Res> {
  _$TraitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? wikiUrl = null,
    Object? description = null,
    Object? effect = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TraitCopyWith<$Res> implements $TraitCopyWith<$Res> {
  factory _$$_TraitCopyWith(_$_Trait value, $Res Function(_$_Trait) then) =
      __$$_TraitCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String wikiUrl,
      @HiveField(2) String description,
      @HiveField(3) String effect});
}

/// @nodoc
class __$$_TraitCopyWithImpl<$Res> extends _$TraitCopyWithImpl<$Res, _$_Trait>
    implements _$$_TraitCopyWith<$Res> {
  __$$_TraitCopyWithImpl(_$_Trait _value, $Res Function(_$_Trait) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? wikiUrl = null,
    Object? description = null,
    Object? effect = null,
  }) {
    return _then(_$_Trait(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      wikiUrl: null == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      effect: null == effect
          ? _value.effect
          : effect // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 13, adapterName: 'TraitAdapter')
class _$_Trait extends _Trait {
  const _$_Trait(
      {@HiveField(0) required this.name,
      @HiveField(1) required this.wikiUrl,
      @HiveField(2) required this.description,
      @HiveField(3) required this.effect})
      : super._();

  factory _$_Trait.fromJson(Map<String, dynamic> json) =>
      _$$_TraitFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String wikiUrl;
  @override
  @HiveField(2)
  final String description;
  @override
  @HiveField(3)
  final String effect;

  @override
  String toString() {
    return 'Trait(name: $name, wikiUrl: $wikiUrl, description: $description, effect: $effect)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Trait &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.wikiUrl, wikiUrl) || other.wikiUrl == wikiUrl) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.effect, effect) || other.effect == effect));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, wikiUrl, description, effect);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TraitCopyWith<_$_Trait> get copyWith =>
      __$$_TraitCopyWithImpl<_$_Trait>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TraitToJson(
      this,
    );
  }
}

abstract class _Trait extends Trait {
  const factory _Trait(
      {@HiveField(0) required final String name,
      @HiveField(1) required final String wikiUrl,
      @HiveField(2) required final String description,
      @HiveField(3) required final String effect}) = _$_Trait;
  const _Trait._() : super._();

  factory _Trait.fromJson(Map<String, dynamic> json) = _$_Trait.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String get wikiUrl;
  @override
  @HiveField(2)
  String get description;
  @override
  @HiveField(3)
  String get effect;
  @override
  @JsonKey(ignore: true)
  _$$_TraitCopyWith<_$_Trait> get copyWith =>
      throw _privateConstructorUsedError;
}
