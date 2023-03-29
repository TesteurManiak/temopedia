import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../gen/app_localizations.dart';

typedef TranslationFetcher = String Function(AppLocalizations localizations);
typedef TypeColorFetcher = Color Function(BuildContext context);

enum TemType {
  @JsonValue('Neutral')
  neutral(translation: _neutralTranslation, color: _neutralColor),
  @JsonValue('Fire')
  fire(translation: _fireTranslation, color: _fireColor),
  @JsonValue('Water')
  water(translation: _waterTranslation, color: _waterColor),
  @JsonValue('Nature')
  nature(translation: _natureTranslation, color: _natureColor),
  @JsonValue('Electric')
  electric(translation: _electricTranslation, color: _electricColor),
  @JsonValue('Earth')
  earth(translation: _earthTranslation, color: _earthColor),
  @JsonValue('Mental')
  mental(translation: _mentalTranslation, color: _mentalColor),
  @JsonValue('Wind')
  wind(translation: _windTranslation, color: _windColor),
  @JsonValue('Digital')
  digital(translation: _digitalTranslation, color: _digitalColor),
  @JsonValue('Melee')
  melee(translation: _meleeTranslation, color: _meleeColor),
  @JsonValue('Crystal')
  crystal(translation: _crystalTranslation, color: _crystalColor),
  @JsonValue('Toxic')
  toxic(translation: _toxicTranslation, color: _toxicColor),
  @JsonValue('Unknown')
  unknown(translation: _unknownTranslation, color: _unknownColor);

  const TemType({
    required this.translation,
    required this.color,
  });

  final TranslationFetcher translation;
  final TypeColorFetcher color;
}

String _neutralTranslation(AppLocalizations localizations) =>
    localizations.type_neutral;
Color _neutralColor(BuildContext context) => Colors.grey;

String _fireTranslation(AppLocalizations localizations) =>
    localizations.type_fire;
Color _fireColor(BuildContext context) => Colors.red;

String _waterTranslation(AppLocalizations localizations) =>
    localizations.type_water;
Color _waterColor(BuildContext context) => Colors.blue;

String _natureTranslation(AppLocalizations localizations) =>
    localizations.type_nature;
Color _natureColor(BuildContext context) => Colors.green;

String _electricTranslation(AppLocalizations localizations) =>
    localizations.type_electric;
Color _electricColor(BuildContext context) => Colors.yellow;

String _earthTranslation(AppLocalizations localizations) =>
    localizations.type_earth;
Color _earthColor(BuildContext context) => Colors.brown;

String _mentalTranslation(AppLocalizations localizations) =>
    localizations.type_mental;
Color _mentalColor(BuildContext context) => Colors.purple;

String _windTranslation(AppLocalizations localizations) =>
    localizations.type_wind;
Color _windColor(BuildContext context) => Colors.lightBlue;

String _digitalTranslation(AppLocalizations localizations) =>
    localizations.type_digital;
Color _digitalColor(BuildContext context) => Colors.pink;

String _meleeTranslation(AppLocalizations localizations) =>
    localizations.type_melee;
Color _meleeColor(BuildContext context) => Colors.orange;

String _crystalTranslation(AppLocalizations localizations) =>
    localizations.type_crystal;
Color _crystalColor(BuildContext context) => Colors.cyan;

String _toxicTranslation(AppLocalizations localizations) =>
    localizations.type_toxic;
Color _toxicColor(BuildContext context) => Colors.teal;

String _unknownTranslation(AppLocalizations localizations) =>
    localizations.type_unknown;
Color _unknownColor(BuildContext context) => Colors.grey;

class TypeListConverter implements JsonConverter<List<TemType>, List> {
  const TypeListConverter();

  @override
  List<TemType> fromJson(List json) {
    return json
        .map(
          (e) => TemType.values.firstWhere(
            (elem) => elem.name == e.toString().toLowerCase(),
            orElse: () => TemType.unknown,
          ),
        )
        .toList();
  }

  @override
  List<String> toJson(List<TemType> _) {
    throw UnimplementedError();
  }
}
