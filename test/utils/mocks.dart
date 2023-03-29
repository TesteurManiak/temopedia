import 'package:flutter/material.dart';
import 'package:temopedia/gen/app_localizations.dart';

class MockLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const MockLocalizationsDelegate();

  final locale = const Locale('en');

  @override
  bool isSupported(Locale _) => true;

  @override
  Future<AppLocalizations> load(Locale _) {
    return AppLocalizations.delegate.load(locale);
  }

  @override
  bool shouldReload(MockLocalizationsDelegate _) => false;
}
