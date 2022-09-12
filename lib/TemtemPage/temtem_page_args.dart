import 'package:flutter/material.dart';

import 'temtem_args.dart';
import 'temtem_page.dart';

class TemtemPageArgs extends StatelessWidget {
  static const routeName = '/temtem';

  const TemtemPageArgs({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as TemtemArgs;
    return TemtemPage(args.temtem);
  }
}
