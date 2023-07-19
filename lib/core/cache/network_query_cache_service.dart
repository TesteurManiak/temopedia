import 'package:clock/clock.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:temopedia/core/cache/hive_cache_service.dart';
import 'package:temopedia/core/cache/models/cache_entry.dart';

part 'network_query_cache_service.g.dart';

const kCacheDefaultDuration = Duration(minutes: 10);

typedef NetworkCacheEntry = CacheEntry<String>;

class NetworkQueryCacheService extends HiveCacheService<String> {
  NetworkQueryCacheService({
    this.cacheDuration = kCacheDefaultDuration,
  });

  final Duration cacheDuration;

  Future<NetworkCacheEntry?> get(String cacheKey) async {
    final entry = await getEntry(cacheKey);
    return validateCacheEntry(entry);
  }

  Future<void> put({
    required String cacheKey,
    required String networkResponseJson,
  }) async {
    final entry = NetworkCacheEntry(
      key: cacheKey,
      value: networkResponseJson,
      expiry: clock.now().add(cacheDuration),
    );

    await putEntry(entry);
  }
}

@riverpod
NetworkQueryCacheService networkQueryCacheService(
  NetworkQueryCacheServiceRef ref,
) {
  return NetworkQueryCacheService();
}
