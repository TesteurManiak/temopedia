// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_temtem_trait.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchTemtemTraitHash() => r'ffc03a810e83a4f7a5fae23b2c67c9fd647c2221';

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

typedef FetchTemtemTraitRef
    = AutoDisposeFutureProviderRef<Result<Trait, AppError>>;

/// See also [fetchTemtemTrait].
@ProviderFor(fetchTemtemTrait)
const fetchTemtemTraitProvider = FetchTemtemTraitFamily();

/// See also [fetchTemtemTrait].
class FetchTemtemTraitFamily
    extends Family<AsyncValue<Result<Trait, AppError>>> {
  /// See also [fetchTemtemTrait].
  const FetchTemtemTraitFamily();

  /// See also [fetchTemtemTrait].
  FetchTemtemTraitProvider call(
    String name,
  ) {
    return FetchTemtemTraitProvider(
      name,
    );
  }

  @override
  FetchTemtemTraitProvider getProviderOverride(
    covariant FetchTemtemTraitProvider provider,
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
  String? get name => r'fetchTemtemTraitProvider';
}

/// See also [fetchTemtemTrait].
class FetchTemtemTraitProvider
    extends AutoDisposeFutureProvider<Result<Trait, AppError>> {
  /// See also [fetchTemtemTrait].
  FetchTemtemTraitProvider(
    this.name,
  ) : super.internal(
          (ref) => fetchTemtemTrait(
            ref,
            name,
          ),
          from: fetchTemtemTraitProvider,
          name: r'fetchTemtemTraitProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTemtemTraitHash,
          dependencies: FetchTemtemTraitFamily._dependencies,
          allTransitiveDependencies:
              FetchTemtemTraitFamily._allTransitiveDependencies,
        );

  final String name;

  @override
  bool operator ==(Object other) {
    return other is FetchTemtemTraitProvider && other.name == name;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, name.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
