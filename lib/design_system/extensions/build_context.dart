import 'package:flutter/material.dart';
import 'package:temopedia/design_system/colors.dart';
import 'package:temopedia/design_system/text_styles.dart';

extension BuildContextAppThemeExtension on BuildContext {
  AppColors get colorTheme => appColors;
  AppTextTheme get textTheme => appTextTheme;
}
