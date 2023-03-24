import 'package:go_router/go_router.dart';

import '../views/splash_view.dart';

class SplashRoute extends GoRoute {
  SplashRoute()
      : super(
          path: route,
          builder: (_, __) => const SplashView(),
        );

  static const route = '/splash';
}
