import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app.dart';

import 'bloc/temtem_types/temtem_types_cubit.dart';
import 'bloc/temtems/temtems_cubit.dart';
import 'service_locator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await setupLocator();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(
      MultiBlocProvider(
        providers: [
          BlocProvider<TemtemsCubit>(
            create: (_) => TemtemsCubit(fetchTemtemsUseCase: sl()),
          ),
          BlocProvider(
            create: (_) => TemtemTypesCubit(fetchTemTypesUseCase: sl()),
          ),
        ],
        child: const MyApp(),
      ),
    ),
  );
}
