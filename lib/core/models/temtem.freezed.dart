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
  @HiveField(0)
  int get number => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get name => throw _privateConstructorUsedError;
  @TypeListConverter()
  @HiveField(2)
  List<TemType> get types => throw _privateConstructorUsedError;
  @HiveField(3)
  String? get portraitWikiUrl => throw _privateConstructorUsedError;
  @HiveField(4)
  String? get lumaPortraitWikiUrl => throw _privateConstructorUsedError;
  @HiveField(5)
  String? get wikiUrl => throw _privateConstructorUsedError;
  @HiveField(6)
  Stats get stats => throw _privateConstructorUsedError;
  @HiveField(7)
  List<String> get traits => throw _privateConstructorUsedError;
  @HiveField(8)
  Details get details => throw _privateConstructorUsedError;
  @HiveField(9)
  List<Technique> get techniques => throw _privateConstructorUsedError;
  @HiveField(10)
  List<String> get trivia => throw _privateConstructorUsedError;
  @HiveField(11)
  Evolution? get evolution => throw _privateConstructorUsedError;
  @HiveField(12)
  String? get wikiPortraitUrlLarge => throw _privateConstructorUsedError;
  @HiveField(13)
  String? get lumaWikiPortraitUrlLarge => throw _privateConstructorUsedError;
  @HiveField(14)
  List<Location> get locations => throw _privateConstructorUsedError;
  @HiveField(15)
  String? get icon => throw _privateConstructorUsedError;
  @HiveField(16)
  String? get lumaIcon => throw _privateConstructorUsedError;
  @HiveField(17)
  GenderRatio get genderRatio => throw _privateConstructorUsedError;
  @HiveField(18)
  int get catchRate => throw _privateConstructorUsedError;
  @HiveField(19)
  double get hatchMins => throw _privateConstructorUsedError;
  @HiveField(20)
  Stats get tvYields => throw _privateConstructorUsedError;
  @HiveField(21)
  String? get gameDescription => throw _privateConstructorUsedError;
  @HiveField(22)
  String? get wikiRenderStaticUrl => throw _privateConstructorUsedError;
  @HiveField(23)
  String? get wikiRenderAnimatedUrl => throw _privateConstructorUsedError;
  @HiveField(24)
  String? get wikiRenderStaticLumaUrl => throw _privateConstructorUsedError;
  @HiveField(25)
  String? get wikiRenderAnimatedLumaUrl => throw _privateConstructorUsedError;
  @HiveField(26)
  String? get renderStaticImage => throw _privateConstructorUsedError;
  @HiveField(27)
  String? get renderStaticLumaImage => throw _privateConstructorUsedError;
  @HiveField(28)
  String? get renderAnimatedImage => throw _privateConstructorUsedError;
  @HiveField(29)
  String? get renderAnimatedLumaImage => throw _privateConstructorUsedError;

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
      {@HiveField(0) int number,
      @HiveField(1) String? name,
      @TypeListConverter() @HiveField(2) List<TemType> types,
      @HiveField(3) String? portraitWikiUrl,
      @HiveField(4) String? lumaPortraitWikiUrl,
      @HiveField(5) String? wikiUrl,
      @HiveField(6) Stats stats,
      @HiveField(7) List<String> traits,
      @HiveField(8) Details details,
      @HiveField(9) List<Technique> techniques,
      @HiveField(10) List<String> trivia,
      @HiveField(11) Evolution? evolution,
      @HiveField(12) String? wikiPortraitUrlLarge,
      @HiveField(13) String? lumaWikiPortraitUrlLarge,
      @HiveField(14) List<Location> locations,
      @HiveField(15) String? icon,
      @HiveField(16) String? lumaIcon,
      @HiveField(17) GenderRatio genderRatio,
      @HiveField(18) int catchRate,
      @HiveField(19) double hatchMins,
      @HiveField(20) Stats tvYields,
      @HiveField(21) String? gameDescription,
      @HiveField(22) String? wikiRenderStaticUrl,
      @HiveField(23) String? wikiRenderAnimatedUrl,
      @HiveField(24) String? wikiRenderStaticLumaUrl,
      @HiveField(25) String? wikiRenderAnimatedLumaUrl,
      @HiveField(26) String? renderStaticImage,
      @HiveField(27) String? renderStaticLumaImage,
      @HiveField(28) String? renderAnimatedImage,
      @HiveField(29) String? renderAnimatedLumaImage});

  $StatsCopyWith<$Res> get stats;
  $DetailsCopyWith<$Res> get details;
  $EvolutionCopyWith<$Res>? get evolution;
  $GenderRatioCopyWith<$Res> get genderRatio;
  $StatsCopyWith<$Res> get tvYields;
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
    Object? number = null,
    Object? name = freezed,
    Object? types = null,
    Object? portraitWikiUrl = freezed,
    Object? lumaPortraitWikiUrl = freezed,
    Object? wikiUrl = freezed,
    Object? stats = null,
    Object? traits = null,
    Object? details = null,
    Object? techniques = null,
    Object? trivia = null,
    Object? evolution = freezed,
    Object? wikiPortraitUrlLarge = freezed,
    Object? lumaWikiPortraitUrlLarge = freezed,
    Object? locations = null,
    Object? icon = freezed,
    Object? lumaIcon = freezed,
    Object? genderRatio = null,
    Object? catchRate = null,
    Object? hatchMins = null,
    Object? tvYields = null,
    Object? gameDescription = freezed,
    Object? wikiRenderStaticUrl = freezed,
    Object? wikiRenderAnimatedUrl = freezed,
    Object? wikiRenderStaticLumaUrl = freezed,
    Object? wikiRenderAnimatedLumaUrl = freezed,
    Object? renderStaticImage = freezed,
    Object? renderStaticLumaImage = freezed,
    Object? renderAnimatedImage = freezed,
    Object? renderAnimatedLumaImage = freezed,
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
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TemType>,
      portraitWikiUrl: freezed == portraitWikiUrl
          ? _value.portraitWikiUrl
          : portraitWikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lumaPortraitWikiUrl: freezed == lumaPortraitWikiUrl
          ? _value.lumaPortraitWikiUrl
          : lumaPortraitWikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiUrl: freezed == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats,
      traits: null == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details,
      techniques: null == techniques
          ? _value.techniques
          : techniques // ignore: cast_nullable_to_non_nullable
              as List<Technique>,
      trivia: null == trivia
          ? _value.trivia
          : trivia // ignore: cast_nullable_to_non_nullable
              as List<String>,
      evolution: freezed == evolution
          ? _value.evolution
          : evolution // ignore: cast_nullable_to_non_nullable
              as Evolution?,
      wikiPortraitUrlLarge: freezed == wikiPortraitUrlLarge
          ? _value.wikiPortraitUrlLarge
          : wikiPortraitUrlLarge // ignore: cast_nullable_to_non_nullable
              as String?,
      lumaWikiPortraitUrlLarge: freezed == lumaWikiPortraitUrlLarge
          ? _value.lumaWikiPortraitUrlLarge
          : lumaWikiPortraitUrlLarge // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: null == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      lumaIcon: freezed == lumaIcon
          ? _value.lumaIcon
          : lumaIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      genderRatio: null == genderRatio
          ? _value.genderRatio
          : genderRatio // ignore: cast_nullable_to_non_nullable
              as GenderRatio,
      catchRate: null == catchRate
          ? _value.catchRate
          : catchRate // ignore: cast_nullable_to_non_nullable
              as int,
      hatchMins: null == hatchMins
          ? _value.hatchMins
          : hatchMins // ignore: cast_nullable_to_non_nullable
              as double,
      tvYields: null == tvYields
          ? _value.tvYields
          : tvYields // ignore: cast_nullable_to_non_nullable
              as Stats,
      gameDescription: freezed == gameDescription
          ? _value.gameDescription
          : gameDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiRenderStaticUrl: freezed == wikiRenderStaticUrl
          ? _value.wikiRenderStaticUrl
          : wikiRenderStaticUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiRenderAnimatedUrl: freezed == wikiRenderAnimatedUrl
          ? _value.wikiRenderAnimatedUrl
          : wikiRenderAnimatedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiRenderStaticLumaUrl: freezed == wikiRenderStaticLumaUrl
          ? _value.wikiRenderStaticLumaUrl
          : wikiRenderStaticLumaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiRenderAnimatedLumaUrl: freezed == wikiRenderAnimatedLumaUrl
          ? _value.wikiRenderAnimatedLumaUrl
          : wikiRenderAnimatedLumaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      renderStaticImage: freezed == renderStaticImage
          ? _value.renderStaticImage
          : renderStaticImage // ignore: cast_nullable_to_non_nullable
              as String?,
      renderStaticLumaImage: freezed == renderStaticLumaImage
          ? _value.renderStaticLumaImage
          : renderStaticLumaImage // ignore: cast_nullable_to_non_nullable
              as String?,
      renderAnimatedImage: freezed == renderAnimatedImage
          ? _value.renderAnimatedImage
          : renderAnimatedImage // ignore: cast_nullable_to_non_nullable
              as String?,
      renderAnimatedLumaImage: freezed == renderAnimatedLumaImage
          ? _value.renderAnimatedLumaImage
          : renderAnimatedLumaImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatsCopyWith<$Res> get stats {
    return $StatsCopyWith<$Res>(_value.stats, (value) {
      return _then(_value.copyWith(stats: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsCopyWith<$Res> get details {
    return $DetailsCopyWith<$Res>(_value.details, (value) {
      return _then(_value.copyWith(details: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EvolutionCopyWith<$Res>? get evolution {
    if (_value.evolution == null) {
      return null;
    }

    return $EvolutionCopyWith<$Res>(_value.evolution!, (value) {
      return _then(_value.copyWith(evolution: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $GenderRatioCopyWith<$Res> get genderRatio {
    return $GenderRatioCopyWith<$Res>(_value.genderRatio, (value) {
      return _then(_value.copyWith(genderRatio: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $StatsCopyWith<$Res> get tvYields {
    return $StatsCopyWith<$Res>(_value.tvYields, (value) {
      return _then(_value.copyWith(tvYields: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TemtemCopyWith<$Res> implements $TemtemCopyWith<$Res> {
  factory _$$_TemtemCopyWith(_$_Temtem value, $Res Function(_$_Temtem) then) =
      __$$_TemtemCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) int number,
      @HiveField(1) String? name,
      @TypeListConverter() @HiveField(2) List<TemType> types,
      @HiveField(3) String? portraitWikiUrl,
      @HiveField(4) String? lumaPortraitWikiUrl,
      @HiveField(5) String? wikiUrl,
      @HiveField(6) Stats stats,
      @HiveField(7) List<String> traits,
      @HiveField(8) Details details,
      @HiveField(9) List<Technique> techniques,
      @HiveField(10) List<String> trivia,
      @HiveField(11) Evolution? evolution,
      @HiveField(12) String? wikiPortraitUrlLarge,
      @HiveField(13) String? lumaWikiPortraitUrlLarge,
      @HiveField(14) List<Location> locations,
      @HiveField(15) String? icon,
      @HiveField(16) String? lumaIcon,
      @HiveField(17) GenderRatio genderRatio,
      @HiveField(18) int catchRate,
      @HiveField(19) double hatchMins,
      @HiveField(20) Stats tvYields,
      @HiveField(21) String? gameDescription,
      @HiveField(22) String? wikiRenderStaticUrl,
      @HiveField(23) String? wikiRenderAnimatedUrl,
      @HiveField(24) String? wikiRenderStaticLumaUrl,
      @HiveField(25) String? wikiRenderAnimatedLumaUrl,
      @HiveField(26) String? renderStaticImage,
      @HiveField(27) String? renderStaticLumaImage,
      @HiveField(28) String? renderAnimatedImage,
      @HiveField(29) String? renderAnimatedLumaImage});

  @override
  $StatsCopyWith<$Res> get stats;
  @override
  $DetailsCopyWith<$Res> get details;
  @override
  $EvolutionCopyWith<$Res>? get evolution;
  @override
  $GenderRatioCopyWith<$Res> get genderRatio;
  @override
  $StatsCopyWith<$Res> get tvYields;
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
    Object? number = null,
    Object? name = freezed,
    Object? types = null,
    Object? portraitWikiUrl = freezed,
    Object? lumaPortraitWikiUrl = freezed,
    Object? wikiUrl = freezed,
    Object? stats = null,
    Object? traits = null,
    Object? details = null,
    Object? techniques = null,
    Object? trivia = null,
    Object? evolution = freezed,
    Object? wikiPortraitUrlLarge = freezed,
    Object? lumaWikiPortraitUrlLarge = freezed,
    Object? locations = null,
    Object? icon = freezed,
    Object? lumaIcon = freezed,
    Object? genderRatio = null,
    Object? catchRate = null,
    Object? hatchMins = null,
    Object? tvYields = null,
    Object? gameDescription = freezed,
    Object? wikiRenderStaticUrl = freezed,
    Object? wikiRenderAnimatedUrl = freezed,
    Object? wikiRenderStaticLumaUrl = freezed,
    Object? wikiRenderAnimatedLumaUrl = freezed,
    Object? renderStaticImage = freezed,
    Object? renderStaticLumaImage = freezed,
    Object? renderAnimatedImage = freezed,
    Object? renderAnimatedLumaImage = freezed,
  }) {
    return _then(_$_Temtem(
      number: null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<TemType>,
      portraitWikiUrl: freezed == portraitWikiUrl
          ? _value.portraitWikiUrl
          : portraitWikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      lumaPortraitWikiUrl: freezed == lumaPortraitWikiUrl
          ? _value.lumaPortraitWikiUrl
          : lumaPortraitWikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiUrl: freezed == wikiUrl
          ? _value.wikiUrl
          : wikiUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      stats: null == stats
          ? _value.stats
          : stats // ignore: cast_nullable_to_non_nullable
              as Stats,
      traits: null == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as List<String>,
      details: null == details
          ? _value.details
          : details // ignore: cast_nullable_to_non_nullable
              as Details,
      techniques: null == techniques
          ? _value._techniques
          : techniques // ignore: cast_nullable_to_non_nullable
              as List<Technique>,
      trivia: null == trivia
          ? _value._trivia
          : trivia // ignore: cast_nullable_to_non_nullable
              as List<String>,
      evolution: freezed == evolution
          ? _value.evolution
          : evolution // ignore: cast_nullable_to_non_nullable
              as Evolution?,
      wikiPortraitUrlLarge: freezed == wikiPortraitUrlLarge
          ? _value.wikiPortraitUrlLarge
          : wikiPortraitUrlLarge // ignore: cast_nullable_to_non_nullable
              as String?,
      lumaWikiPortraitUrlLarge: freezed == lumaWikiPortraitUrlLarge
          ? _value.lumaWikiPortraitUrlLarge
          : lumaWikiPortraitUrlLarge // ignore: cast_nullable_to_non_nullable
              as String?,
      locations: null == locations
          ? _value._locations
          : locations // ignore: cast_nullable_to_non_nullable
              as List<Location>,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      lumaIcon: freezed == lumaIcon
          ? _value.lumaIcon
          : lumaIcon // ignore: cast_nullable_to_non_nullable
              as String?,
      genderRatio: null == genderRatio
          ? _value.genderRatio
          : genderRatio // ignore: cast_nullable_to_non_nullable
              as GenderRatio,
      catchRate: null == catchRate
          ? _value.catchRate
          : catchRate // ignore: cast_nullable_to_non_nullable
              as int,
      hatchMins: null == hatchMins
          ? _value.hatchMins
          : hatchMins // ignore: cast_nullable_to_non_nullable
              as double,
      tvYields: null == tvYields
          ? _value.tvYields
          : tvYields // ignore: cast_nullable_to_non_nullable
              as Stats,
      gameDescription: freezed == gameDescription
          ? _value.gameDescription
          : gameDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiRenderStaticUrl: freezed == wikiRenderStaticUrl
          ? _value.wikiRenderStaticUrl
          : wikiRenderStaticUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiRenderAnimatedUrl: freezed == wikiRenderAnimatedUrl
          ? _value.wikiRenderAnimatedUrl
          : wikiRenderAnimatedUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiRenderStaticLumaUrl: freezed == wikiRenderStaticLumaUrl
          ? _value.wikiRenderStaticLumaUrl
          : wikiRenderStaticLumaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      wikiRenderAnimatedLumaUrl: freezed == wikiRenderAnimatedLumaUrl
          ? _value.wikiRenderAnimatedLumaUrl
          : wikiRenderAnimatedLumaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      renderStaticImage: freezed == renderStaticImage
          ? _value.renderStaticImage
          : renderStaticImage // ignore: cast_nullable_to_non_nullable
              as String?,
      renderStaticLumaImage: freezed == renderStaticLumaImage
          ? _value.renderStaticLumaImage
          : renderStaticLumaImage // ignore: cast_nullable_to_non_nullable
              as String?,
      renderAnimatedImage: freezed == renderAnimatedImage
          ? _value.renderAnimatedImage
          : renderAnimatedImage // ignore: cast_nullable_to_non_nullable
              as String?,
      renderAnimatedLumaImage: freezed == renderAnimatedLumaImage
          ? _value.renderAnimatedLumaImage
          : renderAnimatedLumaImage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 1, adapterName: 'TemtemAdapter')
class _$_Temtem extends _Temtem {
  _$_Temtem(
      {@HiveField(0)
          required this.number,
      @HiveField(1)
          this.name,
      @TypeListConverter()
      @HiveField(2)
          final List<TemType> types = const <TemType>[],
      @HiveField(3)
          this.portraitWikiUrl,
      @HiveField(4)
          this.lumaPortraitWikiUrl,
      @HiveField(5)
          this.wikiUrl,
      @HiveField(6)
          this.stats = const Stats(),
      @HiveField(7)
          final List<String> traits = const <String>[],
      @HiveField(8)
          this.details = const Details(),
      @HiveField(9)
          final List<Technique> techniques = const <Technique>[],
      @HiveField(10)
          final List<String> trivia = const <String>[],
      @HiveField(11)
          this.evolution,
      @HiveField(12)
          this.wikiPortraitUrlLarge,
      @HiveField(13)
          this.lumaWikiPortraitUrlLarge,
      @HiveField(14)
          final List<Location> locations = const <Location>[],
      @HiveField(15)
          this.icon,
      @HiveField(16)
          this.lumaIcon,
      @HiveField(17)
          this.genderRatio = const GenderRatio(),
      @HiveField(18)
          this.catchRate = 0,
      @HiveField(19)
          this.hatchMins = 0,
      @HiveField(20)
          this.tvYields = const Stats(),
      @HiveField(21)
          this.gameDescription,
      @HiveField(22)
          this.wikiRenderStaticUrl,
      @HiveField(23)
          this.wikiRenderAnimatedUrl,
      @HiveField(24)
          this.wikiRenderStaticLumaUrl,
      @HiveField(25)
          this.wikiRenderAnimatedLumaUrl,
      @HiveField(26)
          this.renderStaticImage,
      @HiveField(27)
          this.renderStaticLumaImage,
      @HiveField(28)
          this.renderAnimatedImage,
      @HiveField(29)
          this.renderAnimatedLumaImage})
      : _types = types,
        _traits = traits,
        _techniques = techniques,
        _trivia = trivia,
        _locations = locations,
        super._();

  factory _$_Temtem.fromJson(Map<String, dynamic> json) =>
      _$$_TemtemFromJson(json);

  @override
  @HiveField(0)
  final int number;
  @override
  @HiveField(1)
  final String? name;
  final List<TemType> _types;
  @override
  @JsonKey()
  @TypeListConverter()
  @HiveField(2)
  List<TemType> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  @HiveField(3)
  final String? portraitWikiUrl;
  @override
  @HiveField(4)
  final String? lumaPortraitWikiUrl;
  @override
  @HiveField(5)
  final String? wikiUrl;
  @override
  @JsonKey()
  @HiveField(6)
  final Stats stats;
  final List<String> _traits;
  @override
  @JsonKey()
  @HiveField(7)
  List<String> get traits {
    if (_traits is EqualUnmodifiableListView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_traits);
  }

  @override
  @JsonKey()
  @HiveField(8)
  final Details details;
  final List<Technique> _techniques;
  @override
  @JsonKey()
  @HiveField(9)
  List<Technique> get techniques {
    if (_techniques is EqualUnmodifiableListView) return _techniques;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_techniques);
  }

  final List<String> _trivia;
  @override
  @JsonKey()
  @HiveField(10)
  List<String> get trivia {
    if (_trivia is EqualUnmodifiableListView) return _trivia;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_trivia);
  }

  @override
  @HiveField(11)
  final Evolution? evolution;
  @override
  @HiveField(12)
  final String? wikiPortraitUrlLarge;
  @override
  @HiveField(13)
  final String? lumaWikiPortraitUrlLarge;
  final List<Location> _locations;
  @override
  @JsonKey()
  @HiveField(14)
  List<Location> get locations {
    if (_locations is EqualUnmodifiableListView) return _locations;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_locations);
  }

  @override
  @HiveField(15)
  final String? icon;
  @override
  @HiveField(16)
  final String? lumaIcon;
  @override
  @JsonKey()
  @HiveField(17)
  final GenderRatio genderRatio;
  @override
  @JsonKey()
  @HiveField(18)
  final int catchRate;
  @override
  @JsonKey()
  @HiveField(19)
  final double hatchMins;
  @override
  @JsonKey()
  @HiveField(20)
  final Stats tvYields;
  @override
  @HiveField(21)
  final String? gameDescription;
  @override
  @HiveField(22)
  final String? wikiRenderStaticUrl;
  @override
  @HiveField(23)
  final String? wikiRenderAnimatedUrl;
  @override
  @HiveField(24)
  final String? wikiRenderStaticLumaUrl;
  @override
  @HiveField(25)
  final String? wikiRenderAnimatedLumaUrl;
  @override
  @HiveField(26)
  final String? renderStaticImage;
  @override
  @HiveField(27)
  final String? renderStaticLumaImage;
  @override
  @HiveField(28)
  final String? renderAnimatedImage;
  @override
  @HiveField(29)
  final String? renderAnimatedLumaImage;

  @override
  String toString() {
    return 'Temtem(number: $number, name: $name, types: $types, portraitWikiUrl: $portraitWikiUrl, lumaPortraitWikiUrl: $lumaPortraitWikiUrl, wikiUrl: $wikiUrl, stats: $stats, traits: $traits, details: $details, techniques: $techniques, trivia: $trivia, evolution: $evolution, wikiPortraitUrlLarge: $wikiPortraitUrlLarge, lumaWikiPortraitUrlLarge: $lumaWikiPortraitUrlLarge, locations: $locations, icon: $icon, lumaIcon: $lumaIcon, genderRatio: $genderRatio, catchRate: $catchRate, hatchMins: $hatchMins, tvYields: $tvYields, gameDescription: $gameDescription, wikiRenderStaticUrl: $wikiRenderStaticUrl, wikiRenderAnimatedUrl: $wikiRenderAnimatedUrl, wikiRenderStaticLumaUrl: $wikiRenderStaticLumaUrl, wikiRenderAnimatedLumaUrl: $wikiRenderAnimatedLumaUrl, renderStaticImage: $renderStaticImage, renderStaticLumaImage: $renderStaticLumaImage, renderAnimatedImage: $renderAnimatedImage, renderAnimatedLumaImage: $renderAnimatedLumaImage)';
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
            (identical(other.lumaPortraitWikiUrl, lumaPortraitWikiUrl) ||
                other.lumaPortraitWikiUrl == lumaPortraitWikiUrl) &&
            (identical(other.wikiUrl, wikiUrl) || other.wikiUrl == wikiUrl) &&
            (identical(other.stats, stats) || other.stats == stats) &&
            const DeepCollectionEquality().equals(other._traits, _traits) &&
            (identical(other.details, details) || other.details == details) &&
            const DeepCollectionEquality()
                .equals(other._techniques, _techniques) &&
            const DeepCollectionEquality().equals(other._trivia, _trivia) &&
            (identical(other.evolution, evolution) ||
                other.evolution == evolution) &&
            (identical(other.wikiPortraitUrlLarge, wikiPortraitUrlLarge) ||
                other.wikiPortraitUrlLarge == wikiPortraitUrlLarge) &&
            (identical(
                    other.lumaWikiPortraitUrlLarge, lumaWikiPortraitUrlLarge) ||
                other.lumaWikiPortraitUrlLarge == lumaWikiPortraitUrlLarge) &&
            const DeepCollectionEquality()
                .equals(other._locations, _locations) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.lumaIcon, lumaIcon) ||
                other.lumaIcon == lumaIcon) &&
            (identical(other.genderRatio, genderRatio) ||
                other.genderRatio == genderRatio) &&
            (identical(other.catchRate, catchRate) ||
                other.catchRate == catchRate) &&
            (identical(other.hatchMins, hatchMins) ||
                other.hatchMins == hatchMins) &&
            (identical(other.tvYields, tvYields) ||
                other.tvYields == tvYields) &&
            (identical(other.gameDescription, gameDescription) ||
                other.gameDescription == gameDescription) &&
            (identical(other.wikiRenderStaticUrl, wikiRenderStaticUrl) ||
                other.wikiRenderStaticUrl == wikiRenderStaticUrl) &&
            (identical(other.wikiRenderAnimatedUrl, wikiRenderAnimatedUrl) ||
                other.wikiRenderAnimatedUrl == wikiRenderAnimatedUrl) &&
            (identical(
                    other.wikiRenderStaticLumaUrl, wikiRenderStaticLumaUrl) ||
                other.wikiRenderStaticLumaUrl == wikiRenderStaticLumaUrl) &&
            (identical(other.wikiRenderAnimatedLumaUrl,
                    wikiRenderAnimatedLumaUrl) ||
                other.wikiRenderAnimatedLumaUrl == wikiRenderAnimatedLumaUrl) &&
            (identical(other.renderStaticImage, renderStaticImage) ||
                other.renderStaticImage == renderStaticImage) &&
            (identical(other.renderStaticLumaImage, renderStaticLumaImage) ||
                other.renderStaticLumaImage == renderStaticLumaImage) &&
            (identical(other.renderAnimatedImage, renderAnimatedImage) ||
                other.renderAnimatedImage == renderAnimatedImage) &&
            (identical(
                    other.renderAnimatedLumaImage, renderAnimatedLumaImage) ||
                other.renderAnimatedLumaImage == renderAnimatedLumaImage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        number,
        name,
        const DeepCollectionEquality().hash(_types),
        portraitWikiUrl,
        lumaPortraitWikiUrl,
        wikiUrl,
        stats,
        const DeepCollectionEquality().hash(_traits),
        details,
        const DeepCollectionEquality().hash(_techniques),
        const DeepCollectionEquality().hash(_trivia),
        evolution,
        wikiPortraitUrlLarge,
        lumaWikiPortraitUrlLarge,
        const DeepCollectionEquality().hash(_locations),
        icon,
        lumaIcon,
        genderRatio,
        catchRate,
        hatchMins,
        tvYields,
        gameDescription,
        wikiRenderStaticUrl,
        wikiRenderAnimatedUrl,
        wikiRenderStaticLumaUrl,
        wikiRenderAnimatedLumaUrl,
        renderStaticImage,
        renderStaticLumaImage,
        renderAnimatedImage,
        renderAnimatedLumaImage
      ]);

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

abstract class _Temtem extends Temtem {
  factory _Temtem(
      {@HiveField(0) required final int number,
      @HiveField(1) final String? name,
      @TypeListConverter() @HiveField(2) final List<TemType> types,
      @HiveField(3) final String? portraitWikiUrl,
      @HiveField(4) final String? lumaPortraitWikiUrl,
      @HiveField(5) final String? wikiUrl,
      @HiveField(6) final Stats stats,
      @HiveField(7) final List<String> traits,
      @HiveField(8) final Details details,
      @HiveField(9) final List<Technique> techniques,
      @HiveField(10) final List<String> trivia,
      @HiveField(11) final Evolution? evolution,
      @HiveField(12) final String? wikiPortraitUrlLarge,
      @HiveField(13) final String? lumaWikiPortraitUrlLarge,
      @HiveField(14) final List<Location> locations,
      @HiveField(15) final String? icon,
      @HiveField(16) final String? lumaIcon,
      @HiveField(17) final GenderRatio genderRatio,
      @HiveField(18) final int catchRate,
      @HiveField(19) final double hatchMins,
      @HiveField(20) final Stats tvYields,
      @HiveField(21) final String? gameDescription,
      @HiveField(22) final String? wikiRenderStaticUrl,
      @HiveField(23) final String? wikiRenderAnimatedUrl,
      @HiveField(24) final String? wikiRenderStaticLumaUrl,
      @HiveField(25) final String? wikiRenderAnimatedLumaUrl,
      @HiveField(26) final String? renderStaticImage,
      @HiveField(27) final String? renderStaticLumaImage,
      @HiveField(28) final String? renderAnimatedImage,
      @HiveField(29) final String? renderAnimatedLumaImage}) = _$_Temtem;
  _Temtem._() : super._();

  factory _Temtem.fromJson(Map<String, dynamic> json) = _$_Temtem.fromJson;

  @override
  @HiveField(0)
  int get number;
  @override
  @HiveField(1)
  String? get name;
  @override
  @TypeListConverter()
  @HiveField(2)
  List<TemType> get types;
  @override
  @HiveField(3)
  String? get portraitWikiUrl;
  @override
  @HiveField(4)
  String? get lumaPortraitWikiUrl;
  @override
  @HiveField(5)
  String? get wikiUrl;
  @override
  @HiveField(6)
  Stats get stats;
  @override
  @HiveField(7)
  List<String> get traits;
  @override
  @HiveField(8)
  Details get details;
  @override
  @HiveField(9)
  List<Technique> get techniques;
  @override
  @HiveField(10)
  List<String> get trivia;
  @override
  @HiveField(11)
  Evolution? get evolution;
  @override
  @HiveField(12)
  String? get wikiPortraitUrlLarge;
  @override
  @HiveField(13)
  String? get lumaWikiPortraitUrlLarge;
  @override
  @HiveField(14)
  List<Location> get locations;
  @override
  @HiveField(15)
  String? get icon;
  @override
  @HiveField(16)
  String? get lumaIcon;
  @override
  @HiveField(17)
  GenderRatio get genderRatio;
  @override
  @HiveField(18)
  int get catchRate;
  @override
  @HiveField(19)
  double get hatchMins;
  @override
  @HiveField(20)
  Stats get tvYields;
  @override
  @HiveField(21)
  String? get gameDescription;
  @override
  @HiveField(22)
  String? get wikiRenderStaticUrl;
  @override
  @HiveField(23)
  String? get wikiRenderAnimatedUrl;
  @override
  @HiveField(24)
  String? get wikiRenderStaticLumaUrl;
  @override
  @HiveField(25)
  String? get wikiRenderAnimatedLumaUrl;
  @override
  @HiveField(26)
  String? get renderStaticImage;
  @override
  @HiveField(27)
  String? get renderStaticLumaImage;
  @override
  @HiveField(28)
  String? get renderAnimatedImage;
  @override
  @HiveField(29)
  String? get renderAnimatedLumaImage;
  @override
  @JsonKey(ignore: true)
  _$$_TemtemCopyWith<_$_Temtem> get copyWith =>
      throw _privateConstructorUsedError;
}
