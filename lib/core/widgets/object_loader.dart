import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temopedia/core/mixins/loadable.dart';

class ObjectLoader extends ConsumerStatefulWidget {
  const ObjectLoader({
    super.key,
    required this.loadable,
    required this.child,
  });

  final Loadable loadable;
  final Widget child;

  @override
  ConsumerState<ObjectLoader> createState() => _StateNotifierLoaderState();
}

class _StateNotifierLoaderState extends ConsumerState<ObjectLoader> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      widget.loadable.load();
    });
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
