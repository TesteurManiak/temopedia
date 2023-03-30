import 'package:go_router/go_router.dart';

import '../features/details/navigation/route.dart';
import '../features/temtem_list/navigation/route.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: TemtemListRoute.route,
    routes: [
      TemtemListRoute(),
      DetailsRoute(),
    ],
  );
}
