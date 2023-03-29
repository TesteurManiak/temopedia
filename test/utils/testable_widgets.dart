import 'package:flutter/material.dart';
import 'package:temopedia/design_system/theme.dart';

import 'mocks.dart';

class TestableWidget extends StatelessWidget {
  const TestableWidget({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: AppTheme.dark,
      child: Localizations.override(
        context: context,
        delegates: const [MockLocalizationsDelegate()],
        child: child,
      ),
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
      theme: AppTheme.dark,
      localizationsDelegates: const [MockLocalizationsDelegate()],
      home: child,
    );
  }
}
