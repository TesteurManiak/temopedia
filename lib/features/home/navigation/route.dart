import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:temopedia/features/home/views/filters_view.dart';
import 'package:temopedia/features/home/views/temtem_list_tab.dart';

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
    return const TemtemListTab();
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
