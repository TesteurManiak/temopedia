import 'package:clock/clock.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'hive_cache_service.dart';
import 'models/cache_entry.dart';

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

final networkCacheServiceProvider = Provider<NetworkQueryCacheService>((_) {
  return NetworkQueryCacheService();
});
