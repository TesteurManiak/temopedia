import 'package:flutter/material.dart';
import 'package:temopedia/bloc/bloc.dart';

class BlocProvider<T extends BlocBase> extends StatefulWidget {
  final Widget child;
  final List<T> blocs;

  BlocProvider({
    Key key,
    @required this.child,
    @required this.blocs,
  }) : super(key: key);

  @override
  _BlocProviderState createState() {
    if (key != null) masterKey = key;
    return _BlocProviderState();
  }

  static T of<T extends BlocBase>(BuildContext context) {
    _BlocProviderInherited provider = context
        .getElementForInheritedWidgetOfExactType<_BlocProviderInherited>()
        ?.widget;
    return provider?.blocs?.firstWhere((x) => x is T);
  }

  static T master<T extends BlocBase>() {
    assert(masterKey != null);
    return (masterKey.currentWidget as BlocProvider)
        .blocs
        ?.firstWhere((x) => x is T);
  }

  static GlobalKey masterKey;
}

class _BlocProviderState extends State<BlocProvider> {
  @override
  void initState() {
    super.initState();
    widget.blocs?.forEach((bloc) => bloc.initState());
  }

  @override
  void dispose() {
    widget.blocs?.forEach((bloc) => bloc.dispose());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _BlocProviderInherited(
      blocs: widget.blocs,
      child: widget.child,
    );
  }
}

class _BlocProviderInherited extends InheritedWidget {
  final List<BlocBase> blocs;

  _BlocProviderInherited(
      {Key key, @required Widget child, @required this.blocs})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
