import 'package:flutter/material.dart';
import 'package:temopedia/MapPage/MapArgs.dart';
import 'package:temopedia/MapPage/MapPage.dart';

class MapPageArgs extends StatelessWidget {
  static const routeName = '/map';

  @override
  Widget build(BuildContext context) {
    final MapArgs args = ModalRoute.of(context).settings.arguments;
    return MapPage(args.location, args.temtem);
  }
}
