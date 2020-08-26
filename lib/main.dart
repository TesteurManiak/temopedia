import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:temopedia/RootPage/RootPage.dart';
import 'package:temopedia/bloc/bloc.dart';
import 'package:temopedia/bloc/blocProvider.dart';
import 'package:temopedia/bloc/searchBloc.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then(
    (_) => runApp(
      BlocProvider(
        child: MyApp(),
        blocs: <BlocBase>[SearchBloc()],
        key: GlobalKey(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Temopedia',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RootPage(),
    );
  }
}
