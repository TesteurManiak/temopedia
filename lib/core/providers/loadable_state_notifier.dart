import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../mixins/loadable_state_notifier.dart';

abstract class LoadableStateNotifier<T> extends StateNotifier<T>
    with LoadableStateNotifierMixin<T> {
  LoadableStateNotifier(super.state);
}
