import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class TextStyles {
  static TextStyle lightText = TextStyle(color: MyColors.lightFont);
  static TextStyle darkText = TextStyle(color: MyColors.darkFont);
  static TextStyle background = TextStyle(color: MyColors.background);
  static TextStyle lightBold = lightText.copyWith(fontWeight: FontWeight.bold);
  static TextStyle darkBold = darkText.copyWith(fontWeight: FontWeight.bold);
  static TextStyle location = lightText.copyWith(fontSize: 18);
  static TextStyle temtemName = lightBold.copyWith(fontSize: 14, height: 0.7);
  static TextStyle smallLight = lightText.copyWith(height: 0.8);
  static TextStyle evolLevel = lightBold.copyWith(fontSize: 12);
  static TextStyle detailsLabel = darkText.copyWith(height: 0.8);
  static TextStyle detailsHW = lightText.copyWith(fontSize: 25);
  static TextStyle weak =
      TextStyle(color: Colors.red, fontWeight: FontWeight.bold);
  static TextStyle normal =
      TextStyle(color: Colors.white, fontWeight: FontWeight.bold);
  static TextStyle resist =
      TextStyle(color: Colors.green, fontWeight: FontWeight.bold);
  static TextStyle temtemNumber = TextStyle(
    color: Colors.white.withOpacity(0.4),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  static TextStyle itemLarge = TextStyle(
    height: 0.8,
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle itemSmall = TextStyle(
    fontSize: 8,
    height: 0.8,
    color: Colors.white,
  );
  static TextStyle mainName = lightText.copyWith(fontSize: 35);
  static TextStyle number = darkText.copyWith(fontSize: 22);
}
