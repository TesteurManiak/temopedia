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
  @HiveField(0)
  int get stage => throw _privateConstructorUsedError;
  @HiveField(1)
  List<EvolutionNode> get evolutionTree => throw _privateConstructorUsedError;
  @HiveField(2)
  bool get evolves => throw _privateConstructorUsedError;
  @HiveField(3)
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
      {@HiveField(0) int stage,
      @HiveField(1) List<EvolutionNode> evolutionTree,
      @HiveField(2) bool evolves,
      @HiveField(3) String? type});
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
      {@HiveField(0) int stage,
      @HiveField(1) List<EvolutionNode> evolutionTree,
      @HiveField(2) bool evolves,
      @HiveField(3) String? type});
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
@HiveType(typeId: 8, adapterName: 'EvolutionAdapter')
class _$_Evolution extends _Evolution {
  const _$_Evolution(
      {@HiveField(0)
          this.stage = 0,
      @HiveField(1)
          final List<EvolutionNode> evolutionTree = const <EvolutionNode>[],
      @HiveField(2)
          this.evolves = false,
      @HiveField(3)
          this.type})
      : _evolutionTree = evolutionTree,
        super._();

  factory _$_Evolution.fromJson(Map<String, dynamic> json) =>
      _$$_EvolutionFromJson(json);

  @override
  @JsonKey()
  @HiveField(0)
  final int stage;
  final List<EvolutionNode> _evolutionTree;
  @override
  @JsonKey()
  @HiveField(1)
  List<EvolutionNode> get evolutionTree {
    if (_evolutionTree is EqualUnmodifiableListView) return _evolutionTree;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_evolutionTree);
  }

  @override
  @JsonKey()
  @HiveField(2)
  final bool evolves;
  @override
  @HiveField(3)
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

abstract class _Evolution extends Evolution {
  const factory _Evolution(
      {@HiveField(0) final int stage,
      @HiveField(1) final List<EvolutionNode> evolutionTree,
      @HiveField(2) final bool evolves,
      @HiveField(3) final String? type}) = _$_Evolution;
  const _Evolution._() : super._();

  factory _Evolution.fromJson(Map<String, dynamic> json) =
      _$_Evolution.fromJson;

  @override
  @HiveField(0)
  int get stage;
  @override
  @HiveField(1)
  List<EvolutionNode> get evolutionTree;
  @override
  @HiveField(2)
  bool get evolves;
  @override
  @HiveField(3)
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
  @HiveField(0)
  int get number => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @HiveField(2)
  int get stage => throw _privateConstructorUsedError;
  @HiveField(3)
  int get levels => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get trading => throw _privateConstructorUsedError;
  @HiveField(5)
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
      {@HiveField(0) int number,
      @HiveField(1) String? name,
      @HiveField(2) int stage,
      @HiveField(3) int levels,
      @HiveField(4) bool trading,
      @HiveField(5) Map<String, String> traitMapping});
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
      {@HiveField(0) int number,
      @HiveField(1) String? name,
      @HiveField(2) int stage,
      @HiveField(3) int levels,
      @HiveField(4) bool trading,
      @HiveField(5) Map<String, String> traitMapping});
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
@HiveType(typeId: 9, adapterName: 'EvolutionNodeAdapter')
class _$_EvolutionNode extends _EvolutionNode {
  const _$_EvolutionNode(
      {@HiveField(0)
          required this.number,
      @HiveField(1)
          this.name,
      @HiveField(2)
          this.stage = 0,
      @HiveField(3)
          this.levels = 0,
      @HiveField(4)
          this.trading = false,
      @HiveField(5)
          final Map<String, String> traitMapping = const <String, String>{}})
      : _traitMapping = traitMapping,
        super._();

  factory _$_EvolutionNode.fromJson(Map<String, dynamic> json) =>
      _$$_EvolutionNodeFromJson(json);

  @override
  @HiveField(0)
  final int number;
  @override
  @HiveField(1)
  final String? name;
  @override
  @JsonKey()
  @HiveField(2)
  final int stage;
  @override
  @JsonKey()
  @HiveField(3)
  final int levels;
  @override
  @JsonKey()
  @HiveField(4)
  final bool trading;
  final Map<String, String> _traitMapping;
  @override
  @JsonKey()
  @HiveField(5)
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

abstract class _EvolutionNode extends EvolutionNode {
  const factory _EvolutionNode(
      {@HiveField(0) required final int number,
      @HiveField(1) final String? name,
      @HiveField(2) final int stage,
      @HiveField(3) final int levels,
      @HiveField(4) final bool trading,
      @HiveField(5) final Map<String, String> traitMapping}) = _$_EvolutionNode;
  const _EvolutionNode._() : super._();

  factory _EvolutionNode.fromJson(Map<String, dynamic> json) =
      _$_EvolutionNode.fromJson;

  @override
  @HiveField(0)
  int get number;
  @override
  @HiveField(1)
  String? get name;
  @override
  @HiveField(2)
  int get stage;
  @override
  @HiveField(3)
  int get levels;
  @override
  @HiveField(4)
  bool get trading;
  @override
  @HiveField(5)
  Map<String, String> get traitMapping;
  @override
  @JsonKey(ignore: true)
  _$$_EvolutionNodeCopyWith<_$_EvolutionNode> get copyWith =>
      throw _privateConstructorUsedError;
}
