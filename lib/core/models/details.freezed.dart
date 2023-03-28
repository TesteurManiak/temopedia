// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Details _$DetailsFromJson(Map<String, dynamic> json) {
  return _Details.fromJson(json);
}

/// @nodoc
mixin _$Details {
  Height get height => throw _privateConstructorUsedError;
  Weight get weight => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DetailsCopyWith<Details> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsCopyWith<$Res> {
  factory $DetailsCopyWith(Details value, $Res Function(Details) then) =
      _$DetailsCopyWithImpl<$Res, Details>;
  @useResult
  $Res call({Height height, Weight weight});

  $HeightCopyWith<$Res> get height;
  $WeightCopyWith<$Res> get weight;
}

/// @nodoc
class _$DetailsCopyWithImpl<$Res, $Val extends Details>
    implements $DetailsCopyWith<$Res> {
  _$DetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $HeightCopyWith<$Res> get height {
    return $HeightCopyWith<$Res>(_value.height, (value) {
      return _then(_value.copyWith(height: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WeightCopyWith<$Res> get weight {
    return $WeightCopyWith<$Res>(_value.weight, (value) {
      return _then(_value.copyWith(weight: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DetailsCopyWith<$Res> implements $DetailsCopyWith<$Res> {
  factory _$$_DetailsCopyWith(
          _$_Details value, $Res Function(_$_Details) then) =
      __$$_DetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Height height, Weight weight});

  @override
  $HeightCopyWith<$Res> get height;
  @override
  $WeightCopyWith<$Res> get weight;
}

/// @nodoc
class __$$_DetailsCopyWithImpl<$Res>
    extends _$DetailsCopyWithImpl<$Res, _$_Details>
    implements _$$_DetailsCopyWith<$Res> {
  __$$_DetailsCopyWithImpl(_$_Details _value, $Res Function(_$_Details) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? weight = null,
  }) {
    return _then(_$_Details(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as Height,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as Weight,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Details implements _Details {
  const _$_Details(
      {this.height = const Height(), this.weight = const Weight()});

  factory _$_Details.fromJson(Map<String, dynamic> json) =>
      _$$_DetailsFromJson(json);

  @override
  @JsonKey()
  final Height height;
  @override
  @JsonKey()
  final Weight weight;

  @override
  String toString() {
    return 'Details(height: $height, weight: $weight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Details &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, weight);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsCopyWith<_$_Details> get copyWith =>
      __$$_DetailsCopyWithImpl<_$_Details>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DetailsToJson(
      this,
    );
  }
}

abstract class _Details implements Details {
  const factory _Details({final Height height, final Weight weight}) =
      _$_Details;

  factory _Details.fromJson(Map<String, dynamic> json) = _$_Details.fromJson;

  @override
  Height get height;
  @override
  Weight get weight;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsCopyWith<_$_Details> get copyWith =>
      throw _privateConstructorUsedError;
}

Height _$HeightFromJson(Map<String, dynamic> json) {
  return _Height.fromJson(json);
}

/// @nodoc
mixin _$Height {
  int get cm => throw _privateConstructorUsedError;
  int get inches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HeightCopyWith<Height> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeightCopyWith<$Res> {
  factory $HeightCopyWith(Height value, $Res Function(Height) then) =
      _$HeightCopyWithImpl<$Res, Height>;
  @useResult
  $Res call({int cm, int inches});
}

/// @nodoc
class _$HeightCopyWithImpl<$Res, $Val extends Height>
    implements $HeightCopyWith<$Res> {
  _$HeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cm = null,
    Object? inches = null,
  }) {
    return _then(_value.copyWith(
      cm: null == cm
          ? _value.cm
          : cm // ignore: cast_nullable_to_non_nullable
              as int,
      inches: null == inches
          ? _value.inches
          : inches // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HeightCopyWith<$Res> implements $HeightCopyWith<$Res> {
  factory _$$_HeightCopyWith(_$_Height value, $Res Function(_$_Height) then) =
      __$$_HeightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int cm, int inches});
}

/// @nodoc
class __$$_HeightCopyWithImpl<$Res>
    extends _$HeightCopyWithImpl<$Res, _$_Height>
    implements _$$_HeightCopyWith<$Res> {
  __$$_HeightCopyWithImpl(_$_Height _value, $Res Function(_$_Height) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cm = null,
    Object? inches = null,
  }) {
    return _then(_$_Height(
      cm: null == cm
          ? _value.cm
          : cm // ignore: cast_nullable_to_non_nullable
              as int,
      inches: null == inches
          ? _value.inches
          : inches // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Height implements _Height {
  const _$_Height({this.cm = 0, this.inches = 0});

  factory _$_Height.fromJson(Map<String, dynamic> json) =>
      _$$_HeightFromJson(json);

  @override
  @JsonKey()
  final int cm;
  @override
  @JsonKey()
  final int inches;

  @override
  String toString() {
    return 'Height(cm: $cm, inches: $inches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Height &&
            (identical(other.cm, cm) || other.cm == cm) &&
            (identical(other.inches, inches) || other.inches == inches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cm, inches);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HeightCopyWith<_$_Height> get copyWith =>
      __$$_HeightCopyWithImpl<_$_Height>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HeightToJson(
      this,
    );
  }
}

abstract class _Height implements Height {
  const factory _Height({final int cm, final int inches}) = _$_Height;

  factory _Height.fromJson(Map<String, dynamic> json) = _$_Height.fromJson;

  @override
  int get cm;
  @override
  int get inches;
  @override
  @JsonKey(ignore: true)
  _$$_HeightCopyWith<_$_Height> get copyWith =>
      throw _privateConstructorUsedError;
}

Weight _$WeightFromJson(Map<String, dynamic> json) {
  return _Weight.fromJson(json);
}

/// @nodoc
mixin _$Weight {
  int get kg => throw _privateConstructorUsedError;
  int get lbs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WeightCopyWith<Weight> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeightCopyWith<$Res> {
  factory $WeightCopyWith(Weight value, $Res Function(Weight) then) =
      _$WeightCopyWithImpl<$Res, Weight>;
  @useResult
  $Res call({int kg, int lbs});
}

/// @nodoc
class _$WeightCopyWithImpl<$Res, $Val extends Weight>
    implements $WeightCopyWith<$Res> {
  _$WeightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kg = null,
    Object? lbs = null,
  }) {
    return _then(_value.copyWith(
      kg: null == kg
          ? _value.kg
          : kg // ignore: cast_nullable_to_non_nullable
              as int,
      lbs: null == lbs
          ? _value.lbs
          : lbs // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WeightCopyWith<$Res> implements $WeightCopyWith<$Res> {
  factory _$$_WeightCopyWith(_$_Weight value, $Res Function(_$_Weight) then) =
      __$$_WeightCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int kg, int lbs});
}

/// @nodoc
class __$$_WeightCopyWithImpl<$Res>
    extends _$WeightCopyWithImpl<$Res, _$_Weight>
    implements _$$_WeightCopyWith<$Res> {
  __$$_WeightCopyWithImpl(_$_Weight _value, $Res Function(_$_Weight) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kg = null,
    Object? lbs = null,
  }) {
    return _then(_$_Weight(
      kg: null == kg
          ? _value.kg
          : kg // ignore: cast_nullable_to_non_nullable
              as int,
      lbs: null == lbs
          ? _value.lbs
          : lbs // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Weight implements _Weight {
  const _$_Weight({this.kg = 0, this.lbs = 0});

  factory _$_Weight.fromJson(Map<String, dynamic> json) =>
      _$$_WeightFromJson(json);

  @override
  @JsonKey()
  final int kg;
  @override
  @JsonKey()
  final int lbs;

  @override
  String toString() {
    return 'Weight(kg: $kg, lbs: $lbs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Weight &&
            (identical(other.kg, kg) || other.kg == kg) &&
            (identical(other.lbs, lbs) || other.lbs == lbs));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, kg, lbs);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeightCopyWith<_$_Weight> get copyWith =>
      __$$_WeightCopyWithImpl<_$_Weight>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WeightToJson(
      this,
    );
  }
}

abstract class _Weight implements Weight {
  const factory _Weight({final int kg, final int lbs}) = _$_Weight;

  factory _Weight.fromJson(Map<String, dynamic> json) = _$_Weight.fromJson;

  @override
  int get kg;
  @override
  int get lbs;
  @override
  @JsonKey(ignore: true)
  _$$_WeightCopyWith<_$_Weight> get copyWith =>
      throw _privateConstructorUsedError;
}
