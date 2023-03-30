import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../mixins/loadable_state_notifier.dart';

class StateNotifierLoader<NotifierT extends LoadableStateNotifierMixin<T>, T>
    extends ConsumerStatefulWidget {
  const StateNotifierLoader({
    super.key,
    required this.provider,
    required this.child,
  });

  final AutoDisposeStateNotifierProvider<NotifierT, T> provider;
  final Widget child;

  @override
  ConsumerState<StateNotifierLoader> createState() =>
      _StateNotifierLoaderState();
}

class _StateNotifierLoaderState extends ConsumerState<StateNotifierLoader> {
  @override
  void initState() {
    super.initState();
    ref.read(widget.provider.notifier).load();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
