import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../views/filters_view.dart';
import '../views/temtem_list_view.dart';

part 'route.g.dart';

@TypedGoRoute<TemtemListRoute>(
  path: TemtemListRoute.route,
  routes: <TypedGoRoute<GoRouteData>>[
    TypedGoRoute<FiltersRoute>(
      path: FiltersRoute.route,
    ),
  ],
)
class TemtemListRoute extends GoRouteData {
  TemtemListRoute();

  static const route = '/';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TemtemListView();
  }
}

class FiltersRoute extends GoRouteData {
  FiltersRoute();

  static const route = 'filters';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const FiltersView();
  }
}
