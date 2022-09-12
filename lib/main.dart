import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temopedia/RootPage/root_page.dart';
import 'package:temopedia/TemtemPage/temtem_page_args.dart';
import 'package:temopedia/bloc/bloc.dart';
import 'package:temopedia/bloc/bloc_provider.dart';
import 'package:temopedia/bloc/search_bloc.dart';
import 'package:temopedia/map/map_page_args.dart';

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
