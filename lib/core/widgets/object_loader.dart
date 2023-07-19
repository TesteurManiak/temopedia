import 'package:flutter/material.dart';
import 'package:temopedia/core/mixins/loadable.dart';

class ObjectLoader extends StatefulWidget {
  const ObjectLoader({
    super.key,
    required this.loadable,
    required this.child,
  });

  final Loadable loadable;
  final Widget child;

  @override
  State<ObjectLoader> createState() => _StateNotifierLoaderState();
}

class _StateNotifierLoaderState extends State<ObjectLoader> {
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
