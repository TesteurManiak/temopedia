// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_temtem_details.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$fetchTemtemDetailsHash() =>
    r'a8ba4704ebbba3c5312275ba7a685ed4fc2c230f';

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

typedef FetchTemtemDetailsRef
    = AutoDisposeFutureProviderRef<Result<Temtem, AppError>>;

/// See also [fetchTemtemDetails].
@ProviderFor(fetchTemtemDetails)
const fetchTemtemDetailsProvider = FetchTemtemDetailsFamily();

/// See also [fetchTemtemDetails].
class FetchTemtemDetailsFamily
    extends Family<AsyncValue<Result<Temtem, AppError>>> {
  /// See also [fetchTemtemDetails].
  const FetchTemtemDetailsFamily();

  /// See also [fetchTemtemDetails].
  FetchTemtemDetailsProvider call(
    int id,
  ) {
    return FetchTemtemDetailsProvider(
      id,
    );
  }

  @override
  FetchTemtemDetailsProvider getProviderOverride(
    covariant FetchTemtemDetailsProvider provider,
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
  String? get name => r'fetchTemtemDetailsProvider';
}

/// See also [fetchTemtemDetails].
class FetchTemtemDetailsProvider
    extends AutoDisposeFutureProvider<Result<Temtem, AppError>> {
  /// See also [fetchTemtemDetails].
  FetchTemtemDetailsProvider(
    this.id,
  ) : super.internal(
          (ref) => fetchTemtemDetails(
            ref,
            id,
          ),
          from: fetchTemtemDetailsProvider,
          name: r'fetchTemtemDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchTemtemDetailsHash,
          dependencies: FetchTemtemDetailsFamily._dependencies,
          allTransitiveDependencies:
              FetchTemtemDetailsFamily._allTransitiveDependencies,
        );

  final int id;

  @override
  bool operator ==(Object other) {
    return other is FetchTemtemDetailsProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
