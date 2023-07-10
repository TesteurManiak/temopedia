// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_local_temtem.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getLocalTemtemHash() => r'b4d357ccc1a44dd26a18a872c2b0e3f65b4ede7a';

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

typedef GetLocalTemtemRef = AutoDisposeFutureProviderRef<Temtem?>;

/// See also [getLocalTemtem].
@ProviderFor(getLocalTemtem)
const getLocalTemtemProvider = GetLocalTemtemFamily();

/// See also [getLocalTemtem].
class GetLocalTemtemFamily extends Family<AsyncValue<Temtem?>> {
  /// See also [getLocalTemtem].
  const GetLocalTemtemFamily();

  /// See also [getLocalTemtem].
  GetLocalTemtemProvider call(
    int id,
  ) {
    return GetLocalTemtemProvider(
      id,
    );
  }

  @override
  GetLocalTemtemProvider getProviderOverride(
    covariant GetLocalTemtemProvider provider,
  ) {
    return call(
      provider.id,
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
  String? get name => r'getLocalTemtemProvider';
}

/// See also [getLocalTemtem].
class GetLocalTemtemProvider extends AutoDisposeFutureProvider<Temtem?> {
  /// See also [getLocalTemtem].
  GetLocalTemtemProvider(
    this.id,
  ) : super.internal(
          (ref) => getLocalTemtem(
            ref,
            id,
          ),
          from: getLocalTemtemProvider,
          name: r'getLocalTemtemProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getLocalTemtemHash,
          dependencies: GetLocalTemtemFamily._dependencies,
          allTransitiveDependencies:
              GetLocalTemtemFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is GetLocalTemtemProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
