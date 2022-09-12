import 'package:flutter/material.dart';
import 'package:temopedia/MapPage/MapArgs.dart';
import 'package:temopedia/MapPage/MapPage.dart';

class MapPageArgs extends StatelessWidget {
  static const routeName = '/map';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as MapArgs;
    return MapPage(args.location, args.temtem);
  }
}
