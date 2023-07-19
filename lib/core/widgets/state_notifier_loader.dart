import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temopedia/core/mixins/loadable.dart';

class StateNotifierLoader extends ConsumerStatefulWidget {
  const StateNotifierLoader({
    super.key,
    required this.provider,
    required this.child,
  });

  final Loadable provider;
  final Widget child;

  @override
  ConsumerState<StateNotifierLoader> createState() =>
      _StateNotifierLoaderState();
}

class _StateNotifierLoaderState extends ConsumerState<StateNotifierLoader> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.provider.load();
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
