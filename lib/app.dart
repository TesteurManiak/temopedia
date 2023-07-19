import 'package:flutter/material.dart';
import 'package:temopedia/design_system/theme.dart';
import 'package:temopedia/gen/app_localizations.dart';
import 'package:temopedia/router/router.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final router = createRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Temopedia',
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      theme: AppTheme.dark(),
      routerConfig: router,
    );
  }
}
