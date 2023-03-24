import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class TemtemListRoute extends GoRoute {
  TemtemListRoute()
      : super(
          path: route,
          builder: (_, __) => const Scaffold(),
        );

  static const route = '/temtem-list';
}
