import 'package:flutter/material.dart';
import 'package:temopedia/design_system/theme.dart';

import 'mocks.dart';

class TestableWidget extends _TestableWidget {
  const TestableWidget({
    super.key,
    required super.child,
    super.theme,
    super.locale,
  });

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: theme ?? AppTheme.dark(),
      child: Localizations.override(
        context: context,
        locale: locale,
        delegates: [MockLocalizationsDelegate(locale: locale)],
        child: child,
      ),
    );
  }
}

class TestableApp extends _TestableWidget {
  const TestableApp({
    super.key,
    required super.child,
    super.theme,
    super.locale,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme ?? AppTheme.dark(),
      locale: locale,
      localizationsDelegates: [MockLocalizationsDelegate(locale: locale)],
      home: child,
    );
  }
}

abstract class _TestableWidget extends StatelessWidget {
  const _TestableWidget({
    super.key,
    required this.child,
    this.theme,
    this.locale,
  });

  final Locale? locale;
  final ThemeData? theme;
  final Widget child;
}
