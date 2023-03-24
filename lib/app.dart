import 'package:flutter/material.dart';

import 'features/design_system/theme.dart';
import 'features/router/router.dart';

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
      theme: AppTheme.dark(),
      routerConfig: router,
    );
  }
}
