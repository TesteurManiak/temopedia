import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../gen/app_localizations.dart';

enum Type {
  @JsonValue('Neutral')
  neutral,
  @JsonValue('Fire')
  fire,
  @JsonValue('Water')
  water,
  @JsonValue('Nature')
  nature,
  @JsonValue('Electric')
  electric,
  @JsonValue('Earth')
  earth,
  @JsonValue('Mental')
  mental,
  @JsonValue('Wind')
  wind,
  @JsonValue('Digital')
  digital,
  @JsonValue('Melee')
  melee,
  @JsonValue('Crystal')
  crystal,
  @JsonValue('Toxic')
  toxic,
  @JsonValue('Unknown')
  unknown;

  String translate(BuildContext context) {
    final localization = AppLocalizations.of(context);

    switch (this) {
      case Type.neutral:
        return localization.type_neutral;
      case Type.fire:
        return localization.type_fire;
      case Type.water:
        return localization.type_water;
      case Type.nature:
        return localization.type_nature;
      case Type.electric:
        return localization.type_electric;
      case Type.earth:
        return localization.type_earth;
      case Type.mental:
        return localization.type_mental;
      case Type.wind:
        return localization.type_wind;
      case Type.digital:
        return localization.type_digital;
      case Type.melee:
        return localization.type_melee;
      case Type.crystal:
        return localization.type_crystal;
      case Type.toxic:
        return localization.type_toxic;
      case Type.unknown:
        return localization.type_unknown;
    }
  }
}

class TypeListConverter implements JsonConverter<List<Type>, List> {
  const TypeListConverter();

  @override
  List<Type> fromJson(List json) {
    return json
        .map(
          (e) => Type.values.firstWhere(
            (elem) => elem.name == e.toString().toLowerCase(),
            orElse: () => Type.unknown,
          ),
        )
        .toList();
  }

  @override
  List<String> toJson(List<Type> _) {
    throw UnimplementedError();
  }
}
