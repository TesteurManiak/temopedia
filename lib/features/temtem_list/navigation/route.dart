import 'package:go_router/go_router.dart';

import '../views/temtem_list_view.dart';

class TemtemListRoute extends GoRoute {
  TemtemListRoute()
      : super(
          path: route,
          builder: (_, __) => const TemtemListView(),
        );

  static const route = '/temtem-list';
}
