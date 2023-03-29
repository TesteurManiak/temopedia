import 'package:flutter/material.dart';
import 'package:temopedia/gen/app_localizations.dart';

class MockLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const MockLocalizationsDelegate({Locale? locale})
      : locale = locale ?? const Locale('en');

  final Locale locale;

  @override
  bool isSupported(Locale _) => true;

  @override
  Future<AppLocalizations> load(Locale _) {
    return AppLocalizations.delegate.load(locale);
  }

  @override
  bool shouldReload(MockLocalizationsDelegate _) => false;
}
