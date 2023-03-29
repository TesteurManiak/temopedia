import 'package:flutter/material.dart';

import 'mocks.dart';

class TestableWidget extends StatelessWidget {
  const TestableWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Localizations.override(
      context: context,
      delegates: const [MockLocalizationsDelegate()],
      child: child,
    );
  }
}

class TestableApp extends StatelessWidget {
  const TestableApp({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [MockLocalizationsDelegate()],
      home: child,
    );
  }
}
