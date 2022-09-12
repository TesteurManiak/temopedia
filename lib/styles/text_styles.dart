import 'package:flutter/material.dart';

import 'theme.dart';

class TextStyles {
  static TextStyle lightText = const TextStyle(color: MyColors.lightFont);
  static TextStyle darkText = const TextStyle(color: MyColors.darkFont);
  static TextStyle background = const TextStyle(color: MyColors.background);
  static TextStyle lightBold = lightText.copyWith(fontWeight: FontWeight.bold);
  static TextStyle darkBold = darkText.copyWith(fontWeight: FontWeight.bold);
  static TextStyle location = lightText.copyWith(fontSize: 18);
  static TextStyle temtemName = lightBold.copyWith(fontSize: 14, height: 0.7);
  static TextStyle smallLight = lightText.copyWith(height: 0.8);
  static TextStyle evolLevel = lightBold.copyWith(fontSize: 12);
  static TextStyle detailsLabel = darkText.copyWith(height: 0.8);
  static TextStyle detailsHW = lightText.copyWith(fontSize: 25);
  static TextStyle weak =
      const TextStyle(color: Colors.red, fontWeight: FontWeight.bold);
  static TextStyle normal =
      const TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle resist =
      const TextStyle(color: Colors.green, fontWeight: FontWeight.bold);
  static TextStyle temtemNumber = TextStyle(
    color: Colors.white.withOpacity(0.4),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  static TextStyle itemLarge = const TextStyle(
    height: 0.8,
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle itemSmall = const TextStyle(
    fontSize: 8,
    height: 0.8,
    color: Colors.white,
  );
  static TextStyle mainName = lightText.copyWith(fontSize: 35);
  static TextStyle number = darkText.copyWith(fontSize: 22);
}
