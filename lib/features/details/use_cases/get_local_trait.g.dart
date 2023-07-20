// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_local_trait.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLocalTraitHash() => r'5bfbb935c78f569dec95ae163bf25fa3c98da7a7';

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

typedef GetLocalTraitRef = AutoDisposeFutureProviderRef<Trait?>;

/// See also [getLocalTrait].
@ProviderFor(getLocalTrait)
const getLocalTraitProvider = GetLocalTraitFamily();

/// See also [getLocalTrait].
class GetLocalTraitFamily extends Family<AsyncValue<Trait?>> {
  /// See also [getLocalTrait].
  const GetLocalTraitFamily();

  /// See also [getLocalTrait].
  GetLocalTraitProvider call(
    String name,
  ) {
    return GetLocalTraitProvider(
      name,
    );
  }

  @override
  GetLocalTraitProvider getProviderOverride(
    covariant GetLocalTraitProvider provider,
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
  String? get name => r'getLocalTraitProvider';
}

/// See also [getLocalTrait].
class GetLocalTraitProvider extends AutoDisposeFutureProvider<Trait?> {
  /// See also [getLocalTrait].
  GetLocalTraitProvider(
    this.name,
  ) : super.internal(
          (ref) => getLocalTrait(
            ref,
            name,
          ),
          from: getLocalTraitProvider,
          name: r'getLocalTraitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLocalTraitHash,
          dependencies: GetLocalTraitFamily._dependencies,
          allTransitiveDependencies:
              GetLocalTraitFamily._allTransitiveDependencies,
        );

  final String name;

  @override
  bool operator ==(Object other) {
    return other is GetLocalTraitProvider && other.name == name;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
