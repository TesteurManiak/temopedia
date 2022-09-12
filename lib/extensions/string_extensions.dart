import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

extension TypeModifier on Type {
  Color toTypeColor() {
    switch (name.toLowerCase()) {
      case "fire":
        return MyColors.fire;
      case "nature":
        return MyColors.nature;
      case "water":
        return MyColors.water;
      case "electric":
        return MyColors.electric;
      case "mental":
        return MyColors.mental;
      case "earth":
        return MyColors.earth;
      case "wind":
        return MyColors.wind;
      case "crystal":
        return MyColors.crystal;
      case "digital":
        return MyColors.digital;
      case "melee":
        return MyColors.melee;
      case "toxic":
        return MyColors.toxic;
      default:
        return Colors.transparent;
    }
  }
}
