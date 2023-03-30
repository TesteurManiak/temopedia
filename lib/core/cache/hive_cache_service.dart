import 'package:hive_flutter/hive_flutter.dart';

import 'models/cache_entry.dart';

abstract class HiveCacheService<T> {
  static const _valueTable = 'hive-value-cache';
  static const _expiryTable = 'hive-expiry-cache';

  bool _initialized = false;
  bool get initialized => _initialized;

  late final Box<T> _valueBox;
  late final Box<DateTime> _expiryBox;

  Future<void> _init() async {
    if (_initialized) return;

    await Hive.initFlutter();
    _valueBox = await Hive.openBox<T>(_valueTable);
    _expiryBox = await Hive.openBox<DateTime>(_expiryTable);

    _initialized = true;
  }

  Future<CacheEntry<T>?> validateCacheEntry(CacheEntry<T>? cacheEntry) async {
    if (cacheEntry != null && !cacheEntry.isValid) {
      if (!_initialized) {
        await _init();
      }
      await _valueBox.delete(cacheEntry.key);
      await _expiryBox.delete(cacheEntry.key);
      return null;
    }

    return cacheEntry;
  }

  Future<void> clear() async {
    if (!_initialized) {
      await _init();
    }

    await _valueBox.clear();
    await _expiryBox.clear();
  }

  Future<CacheEntry<T>?> getEntry(String key) async {
    if (!_initialized) {
      await _init();
    }

    final value = _valueBox.get(key);
    final expiry = _expiryBox.get(key);

    return value != null && expiry != null
        ? CacheEntry<T>(key: key, value: value, expiry: expiry)
        : null;
  }

  Future<void> putEntry(CacheEntry<T> entry) async {
    if (!_initialized) {
      await _init();
    }

    await _valueBox.put(entry.key, entry.value);
    await _expiryBox.put(entry.key, entry.expiry);
  }
}
