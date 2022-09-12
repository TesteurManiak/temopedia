import 'package:flutter/material.dart';
import 'package:temopedia/TemtemPage/TemtemArgs.dart';
import 'package:temopedia/TemtemPage/TemtemPage.dart';

class TemtemPageArgs extends StatelessWidget {
  static const routeName = '/temtem';
  
  @override
  Widget build(BuildContext context) {
    final TemtemArgs args = ModalRoute.of(context).settings.arguments;
    return TemtemPage(args.temtem);
  }
}
