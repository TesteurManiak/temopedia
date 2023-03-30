import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../views/details_view.dart';

part 'route.g.dart';

@TypedGoRoute<DetailsRoute>(path: DetailsRoute.route)
class DetailsRoute extends GoRouteData {
  DetailsRoute({
    required this.id,
  });

  final int id;

  static const route = '/details/:id';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return DetailsView(id: id);
  }
}
