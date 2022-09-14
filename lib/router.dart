import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import 'bloc/temtems/temtems_cubit.dart';
import 'map/map_page.dart';

import 'presentation/views/home/home_page.dart';
import 'service_locator.dart';
import 'temtem/temtem_page.dart';

GoRouter createRouter() {
  return GoRouter(
    debugLogDiagnostics: kDebugMode,
    routes: [
      GoRoute(
        path: '/',
        name: 'root',
        builder: (_, __) => BlocProvider<TemtemsCubit>(
          create: (_) => TemtemsCubit(fetchTemtemsUseCase: sl()),
          child: const HomePage(),
        ),
        routes: [
          GoRoute(
            path: 'temtem/:id',
            name: 'temtem',
            builder: (context, state) {
              final id = int.parse(state.params['id']!);
              final temtem = context
                  .read<TemtemsCubit>()
                  .temtems
                  .firstWhere((temtem) => temtem.number == id);
              return TemtemPage(temtem);
            },
            routes: [
              GoRoute(
                path: 'map',
                name: 'map',
                builder: (context, state) {
                  final location = state.extra as TemLocation;
                  final id = int.parse(state.params['id']!);
                  final temtem = context
                      .read<TemtemsCubit>()
                      .temtems
                      .firstWhere((temtem) => temtem.number == id);
                  return MapPage(location, temtem);
                },
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
