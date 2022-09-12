import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/search_cubit.dart';
import 'map/map_page_args.dart';
import 'root/root_page.dart';
import 'temtem/temtem_page_args.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(
      BlocProvider(
        create: (_) => SearchCubit(),
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
