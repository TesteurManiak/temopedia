import 'package:go_router/go_router.dart';

import '../features/details/navigation/route.dart' as details;
import '../features/temtem_list/navigation/route.dart' as temtem_list;

GoRouter createRouter() {
  return GoRouter(
    routes: [
      ...temtem_list.$appRoutes,
      ...details.$appRoutes,
    ],
  );
}
