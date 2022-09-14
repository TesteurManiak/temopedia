import 'package:flutter/foundation.dart';
import 'package:go_router/go_router.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import 'map/map_page.dart';

import 'presentation/views/home/home_page.dart';
import 'temtem/temtem_page.dart';

GoRouter createRouter() {
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: AppRoute.home.path,
        name: AppRoute.home.name,
        builder: (_, __) => const HomePage(),
      ),
      GoRoute(
        path: AppRoute.temtem.path,
        name: AppRoute.temtem.name,
        builder: (context, state) {
          final temtem = state.extra as TemTemApiTem;
          return TemtemPage(temtem);
        },
      ),
      GoRoute(
        path: AppRoute.map.path,
        name: AppRoute.map.name,
        builder: (context, state) {
          final args = state.extra as Iterable;
          final temtem = args.first as TemTemApiTem;
          final location = args.last as TemLocation;
          return MapPage(location, temtem);
        },
      ),
    ],
  );
}

enum AppRoute {
  home('/'),
  temtem('/temtem'),
  map('/map');

  final String path;
  const AppRoute(this.path);
}
