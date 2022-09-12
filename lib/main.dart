import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temopedia/MapPage/MapPageArgs.dart';
import 'package:temopedia/RootPage/RootPage.dart';
import 'package:temopedia/TemtemPage/temtem_page_args.dart';
import 'package:temopedia/bloc/bloc.dart';
import 'package:temopedia/bloc/bloc_provider.dart';
import 'package:temopedia/bloc/search_bloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(
      BlocProvider(
        blocs: <BlocBase>[SearchBloc()],
        key: GlobalKey(),
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temopedia',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        RootPage.routeName: (context) => RootPage(),
        TemtemPageArgs.routeName: (context) => const TemtemPageArgs(),
        MapPageArgs.routeName: (context) => MapPageArgs(),
      },
    );
  }
}
