// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'evolution.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Evolution _$EvolutionFromJson(Map<String, dynamic> json) {
  return _Evolution.fromJson(json);
}

/// @nodoc
mixin _$Evolution {
  int get stage => throw _privateConstructorUsedError;
  List<EvolutionNode> get evolutionTree => throw _privateConstructorUsedError;
  bool get evolves => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvolutionCopyWith<Evolution> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionCopyWith<$Res> {
  factory $EvolutionCopyWith(Evolution value, $Res Function(Evolution) then) =
      _$EvolutionCopyWithImpl<$Res, Evolution>;
  @useResult
  $Res call(
      {int stage,
      List<EvolutionNode> evolutionTree,
      bool evolves,
      String? type});
}

/// @nodoc
class _$EvolutionCopyWithImpl<$Res, $Val extends Evolution>
    implements $EvolutionCopyWith<$Res> {
  _$EvolutionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? evolutionTree = null,
    Object? evolves = null,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as int,
      evolutionTree: null == evolutionTree
          ? _value.evolutionTree
          : evolutionTree // ignore: cast_nullable_to_non_nullable
              as List<EvolutionNode>,
      evolves: null == evolves
          ? _value.evolves
          : evolves // ignore: cast_nullable_to_non_nullable
              as bool,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EvolutionCopyWith<$Res> implements $EvolutionCopyWith<$Res> {
  factory _$$_EvolutionCopyWith(
          _$_Evolution value, $Res Function(_$_Evolution) then) =
      __$$_EvolutionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int stage,
      List<EvolutionNode> evolutionTree,
      bool evolves,
      String? type});
}

/// @nodoc
class __$$_EvolutionCopyWithImpl<$Res>
    extends _$EvolutionCopyWithImpl<$Res, _$_Evolution>
    implements _$$_EvolutionCopyWith<$Res> {
  __$$_EvolutionCopyWithImpl(
      _$_Evolution _value, $Res Function(_$_Evolution) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? stage = null,
    Object? evolutionTree = null,
    Object? evolves = null,
    Object? type = freezed,
  }) {
    return _then(_$_Evolution(
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as int,
      evolutionTree: null == evolutionTree
          ? _value._evolutionTree
          : evolutionTree // ignore: cast_nullable_to_non_nullable
              as List<EvolutionNode>,
      evolves: null == evolves
          ? _value.evolves
          : evolves // ignore: cast_nullable_to_non_nullable
              as bool,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Evolution implements _Evolution {
  const _$_Evolution(
      {this.stage = 0,
      final List<EvolutionNode> evolutionTree = const <EvolutionNode>[],
      this.evolves = false,
      this.type})
      : _evolutionTree = evolutionTree;

  factory _$_Evolution.fromJson(Map<String, dynamic> json) =>
      _$$_EvolutionFromJson(json);

  @override
  @JsonKey()
  final int stage;
  final List<EvolutionNode> _evolutionTree;
  @override
  @JsonKey()
  List<EvolutionNode> get evolutionTree {
    if (_evolutionTree is EqualUnmodifiableListView) return _evolutionTree;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolutionTree);
  }

  @override
  @JsonKey()
  final bool evolves;
  @override
  final String? type;

  @override
  String toString() {
    return 'Evolution(stage: $stage, evolutionTree: $evolutionTree, evolves: $evolves, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Evolution &&
            (identical(other.stage, stage) || other.stage == stage) &&
            const DeepCollectionEquality()
                .equals(other._evolutionTree, _evolutionTree) &&
            (identical(other.evolves, evolves) || other.evolves == evolves) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, stage,
      const DeepCollectionEquality().hash(_evolutionTree), evolves, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvolutionCopyWith<_$_Evolution> get copyWith =>
      __$$_EvolutionCopyWithImpl<_$_Evolution>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvolutionToJson(
      this,
    );
  }
}

abstract class _Evolution implements Evolution {
  const factory _Evolution(
      {final int stage,
      final List<EvolutionNode> evolutionTree,
      final bool evolves,
      final String? type}) = _$_Evolution;

  factory _Evolution.fromJson(Map<String, dynamic> json) =
      _$_Evolution.fromJson;

  @override
  int get stage;
  @override
  List<EvolutionNode> get evolutionTree;
  @override
  bool get evolves;
  @override
  String? get type;
  @override
  @JsonKey(ignore: true)
  _$$_EvolutionCopyWith<_$_Evolution> get copyWith =>
      throw _privateConstructorUsedError;
}

EvolutionNode _$EvolutionNodeFromJson(Map<String, dynamic> json) {
  return _EvolutionNode.fromJson(json);
}

/// @nodoc
mixin _$EvolutionNode {
  int get number => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  int get stage => throw _privateConstructorUsedError;
  int get levels => throw _privateConstructorUsedError;
  bool get trading => throw _privateConstructorUsedError;
  Map<String, String> get traitMapping => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EvolutionNodeCopyWith<EvolutionNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EvolutionNodeCopyWith<$Res> {
  factory $EvolutionNodeCopyWith(
          EvolutionNode value, $Res Function(EvolutionNode) then) =
      _$EvolutionNodeCopyWithImpl<$Res, EvolutionNode>;
  @useResult
  $Res call(
      {int number,
      String? name,
      int stage,
      int levels,
      bool trading,
      Map<String, String> traitMapping});
}

/// @nodoc
class _$EvolutionNodeCopyWithImpl<$Res, $Val extends EvolutionNode>
    implements $EvolutionNodeCopyWith<$Res> {
  _$EvolutionNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = freezed,
    Object? stage = null,
    Object? levels = null,
    Object? trading = null,
    Object? traitMapping = null,
  }) {
    return _then(_value.copyWith(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as int,
      levels: null == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as int,
      trading: null == trading
          ? _value.trading
          : trading // ignore: cast_nullable_to_non_nullable
              as bool,
      traitMapping: null == traitMapping
          ? _value.traitMapping
          : traitMapping // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EvolutionNodeCopyWith<$Res>
    implements $EvolutionNodeCopyWith<$Res> {
  factory _$$_EvolutionNodeCopyWith(
          _$_EvolutionNode value, $Res Function(_$_EvolutionNode) then) =
      __$$_EvolutionNodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int number,
      String? name,
      int stage,
      int levels,
      bool trading,
      Map<String, String> traitMapping});
}

/// @nodoc
class __$$_EvolutionNodeCopyWithImpl<$Res>
    extends _$EvolutionNodeCopyWithImpl<$Res, _$_EvolutionNode>
    implements _$$_EvolutionNodeCopyWith<$Res> {
  __$$_EvolutionNodeCopyWithImpl(
      _$_EvolutionNode _value, $Res Function(_$_EvolutionNode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
    Object? name = freezed,
    Object? stage = null,
    Object? levels = null,
    Object? trading = null,
    Object? traitMapping = null,
  }) {
    return _then(_$_EvolutionNode(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      stage: null == stage
          ? _value.stage
          : stage // ignore: cast_nullable_to_non_nullable
              as int,
      levels: null == levels
          ? _value.levels
          : levels // ignore: cast_nullable_to_non_nullable
              as int,
      trading: null == trading
          ? _value.trading
          : trading // ignore: cast_nullable_to_non_nullable
              as bool,
      traitMapping: null == traitMapping
          ? _value._traitMapping
          : traitMapping // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EvolutionNode implements _EvolutionNode {
  const _$_EvolutionNode(
      {required this.number,
      this.name,
      this.stage = 0,
      this.levels = 0,
      this.trading = false,
      final Map<String, String> traitMapping = const <String, String>{}})
      : _traitMapping = traitMapping;

  factory _$_EvolutionNode.fromJson(Map<String, dynamic> json) =>
      _$$_EvolutionNodeFromJson(json);

  @override
  final int number;
  @override
  final String? name;
  @override
  @JsonKey()
  final int stage;
  @override
  @JsonKey()
  final int levels;
  @override
  @JsonKey()
  final bool trading;
  final Map<String, String> _traitMapping;
  @override
  @JsonKey()
  Map<String, String> get traitMapping {
    if (_traitMapping is EqualUnmodifiableMapView) return _traitMapping;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_traitMapping);
  }

  @override
  String toString() {
    return 'EvolutionNode(number: $number, name: $name, stage: $stage, levels: $levels, trading: $trading, traitMapping: $traitMapping)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EvolutionNode &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.stage, stage) || other.stage == stage) &&
            (identical(other.levels, levels) || other.levels == levels) &&
            (identical(other.trading, trading) || other.trading == trading) &&
            const DeepCollectionEquality()
                .equals(other._traitMapping, _traitMapping));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, name, stage, levels,
      trading, const DeepCollectionEquality().hash(_traitMapping));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EvolutionNodeCopyWith<_$_EvolutionNode> get copyWith =>
      __$$_EvolutionNodeCopyWithImpl<_$_EvolutionNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EvolutionNodeToJson(
      this,
    );
  }
}

abstract class _EvolutionNode implements EvolutionNode {
  const factory _EvolutionNode(
      {required final int number,
      final String? name,
      final int stage,
      final int levels,
      final bool trading,
      final Map<String, String> traitMapping}) = _$_EvolutionNode;

  factory _EvolutionNode.fromJson(Map<String, dynamic> json) =
      _$_EvolutionNode.fromJson;

  @override
  int get number;
  @override
  String? get name;
  @override
  int get stage;
  @override
  int get levels;
  @override
  bool get trading;
  @override
  Map<String, String> get traitMapping;
  @override
  @JsonKey(ignore: true)
  _$$_EvolutionNodeCopyWith<_$_EvolutionNode> get copyWith =>
      throw _privateConstructorUsedError;
}
