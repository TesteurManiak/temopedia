import 'package:flutter/material.dart';
import 'package:temopedia/design_system/colors.dart';
import 'package:temopedia/design_system/text_styles.dart';
import 'package:temopedia/design_system/theme.dart';

extension BuildContextAppThemeExtension on BuildContext {
  AppTheme get themeData => AppTheme.of(this);
  AppColors get colorTheme => AppColors.of(this);
  AppTextTheme get textTheme => AppTextTheme.of(this);
}
