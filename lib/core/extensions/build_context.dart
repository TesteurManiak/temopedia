import 'package:flutter/material.dart';

import '../../gen/app_localizations.dart';

extension BuildContextLocalization on BuildContext {
  AppLocalizations get strings => AppLocalizations.of(this);
}
