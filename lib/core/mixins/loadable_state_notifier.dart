import 'package:flutter_riverpod/flutter_riverpod.dart';

mixin LoadableStateNotifierMixin<T> on StateNotifier<T> {
  Future<void> load();
}
