import 'package:flutter/material.dart';

import 'map_args.dart';
import 'map_page.dart';

class MapPageArgs extends StatelessWidget {
  static const routeName = '/map';

  const MapPageArgs({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as MapArgs;
    return MapPage(args.location, args.temtem);
  }
}
