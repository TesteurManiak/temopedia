import 'package:go_router/go_router.dart';

import '../views/details_view.dart';

class DetailsRoute extends GoRoute {
  DetailsRoute()
      : super(
          path: route(':$_idParam'),
          builder: (_, state) {
            final id = int.parse(state.params[_idParam] ?? '');
            return DetailsView(id: id);
          },
        );

  static String route(String id) => '/details/$id';

  static const _idParam = 'id';
}
