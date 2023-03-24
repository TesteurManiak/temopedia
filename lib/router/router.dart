import 'package:go_router/go_router.dart';

import '../features/splash/navigation/route.dart';
import '../features/temtem_list/navigation/route.dart';

GoRouter createRouter() {
  return GoRouter(
    initialLocation: SplashRoute.route,
    // TODO: redirect to SplashRoute.route if data is not loaded
    // redirect: ,
    routes: [
      SplashRoute(),
      TemtemListRoute(),
    ],
  );
}
