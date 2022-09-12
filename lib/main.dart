import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'TemtemPage/temtem_page_args.dart';
import 'bloc/bloc.dart';
import 'bloc/bloc_provider.dart';
import 'bloc/search_bloc.dart';
import 'map/map_page_args.dart';
import 'root/root_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(
      BlocProvider(
        blocs: <BlocBase>[SearchBloc()],
        key: GlobalKey(),
        child: const MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temopedia',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        RootPage.routeName: (context) => const RootPage(),
        TemtemPageArgs.routeName: (context) => const TemtemPageArgs(),
        MapPageArgs.routeName: (context) => const MapPageArgs(),
      },
    );
  }
}
