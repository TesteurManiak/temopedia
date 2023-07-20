// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trait_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$traitControllerHash() => r'7825db5e32155ba2990f06d1cf4cb9ba1c902047';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TraitController
    extends BuildlessAutoDisposeNotifier<TraitState> {
  late final String name;

  TraitState build(
    String name,
  );
}

/// See also [TraitController].
@ProviderFor(TraitController)
const traitControllerProvider = TraitControllerFamily();

/// See also [TraitController].
class TraitControllerFamily extends Family<TraitState> {
  /// See also [TraitController].
  const TraitControllerFamily();

  /// See also [TraitController].
  TraitControllerProvider call(
    String name,
  ) {
    return TraitControllerProvider(
      name,
    );
  }

  @override
  TraitControllerProvider getProviderOverride(
    covariant TraitControllerProvider provider,
  ) {
    return call(
      provider.name,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'traitControllerProvider';
}

/// See also [TraitController].
class TraitControllerProvider
    extends AutoDisposeNotifierProviderImpl<TraitController, TraitState> {
  /// See also [TraitController].
  TraitControllerProvider(
    this.name,
  ) : super.internal(
          () => TraitController()..name = name,
          from: traitControllerProvider,
          name: r'traitControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$traitControllerHash,
          dependencies: TraitControllerFamily._dependencies,
          allTransitiveDependencies:
              TraitControllerFamily._allTransitiveDependencies,
        );

  final String name;

  @override
  bool operator ==(Object other) {
    return other is TraitControllerProvider && other.name == name;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  TraitState runNotifierBuild(
    covariant TraitController notifier,
  ) {
    return notifier.build(
      name,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
