import 'package:clock/clock.dart';

class CacheEntry<T> {
  const CacheEntry({
    required this.key,
    required this.value,
    required this.expiry,
  });

  final String key;
  final T value;
  final DateTime expiry;

  bool get isValid {
    return expiry.isAfter(clock.now());
  }
}
