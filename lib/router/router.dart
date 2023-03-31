import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../features/details/navigation/route.dart' as details;
import '../features/home/navigation/route.dart' as home;

final _rootNavigatorKey = GlobalKey<NavigatorState>();
// final _shellNavigatorKey = GlobalKey<NavigatorState>();

GoRouter createRouter() {
  return GoRouter(
    navigatorKey: _rootNavigatorKey,
    routes: [
      ...home.$appRoutes,
      ...details.$appRoutes,
    ],
  );
}
