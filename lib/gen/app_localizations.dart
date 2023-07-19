import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_fr.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('fr')
  ];

  /// No description provided for @type_neutral.
  ///
  /// In en, this message translates to:
  /// **'Neutral'**
  String get type_neutral;

  /// No description provided for @type_fire.
  ///
  /// In en, this message translates to:
  /// **'Fire'**
  String get type_fire;

  /// No description provided for @type_water.
  ///
  /// In en, this message translates to:
  /// **'Water'**
  String get type_water;

  /// No description provided for @type_nature.
  ///
  /// In en, this message translates to:
  /// **'Nature'**
  String get type_nature;

  /// No description provided for @type_electric.
  ///
  /// In en, this message translates to:
  /// **'Electric'**
  String get type_electric;

  /// No description provided for @type_earth.
  ///
  /// In en, this message translates to:
  /// **'Earth'**
  String get type_earth;

  /// No description provided for @type_mental.
  ///
  /// In en, this message translates to:
  /// **'Mental'**
  String get type_mental;

  /// No description provided for @type_wind.
  ///
  /// In en, this message translates to:
  /// **'Wind'**
  String get type_wind;

  /// No description provided for @type_digital.
  ///
  /// In en, this message translates to:
  /// **'Digital'**
  String get type_digital;

  /// No description provided for @type_melee.
  ///
  /// In en, this message translates to:
  /// **'Melee'**
  String get type_melee;

  /// No description provided for @type_crystal.
  ///
  /// In en, this message translates to:
  /// **'Crystal'**
  String get type_crystal;

  /// No description provided for @type_toxic.
  ///
  /// In en, this message translates to:
  /// **'Toxic'**
  String get type_toxic;

  /// No description provided for @type_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get type_unknown;

  /// No description provided for @hp_stat.
  ///
  /// In en, this message translates to:
  /// **'HP'**
  String get hp_stat;

  /// No description provided for @atk_stat.
  ///
  /// In en, this message translates to:
  /// **'ATK'**
  String get atk_stat;

  /// No description provided for @def_stat.
  ///
  /// In en, this message translates to:
  /// **'DEF'**
  String get def_stat;

  /// No description provided for @spd_stat.
  ///
  /// In en, this message translates to:
  /// **'SPD'**
  String get spd_stat;

  /// No description provided for @sta_stat.
  ///
  /// In en, this message translates to:
  /// **'STA'**
  String get sta_stat;

  /// No description provided for @spatk_stat.
  ///
  /// In en, this message translates to:
  /// **'SPATK'**
  String get spatk_stat;

  /// No description provided for @spdef_stat.
  ///
  /// In en, this message translates to:
  /// **'SPDEF'**
  String get spdef_stat;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total'**
  String get total;

  /// No description provided for @generic_error.
  ///
  /// In en, this message translates to:
  /// **'An error occurred'**
  String get generic_error;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'fr'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'fr': return AppLocalizationsFr();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
