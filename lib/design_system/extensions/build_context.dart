import 'package:flutter/material.dart';

import '../colors.dart';
import '../text_styles.dart';
import '../theme.dart';

extension BuildContextAppThemeExtension on BuildContext {
  AppTheme get themeData => AppTheme.of(this);
  AppColors get colorTheme => AppColors.of(this);
  AppTextTheme get textTheme => AppTextTheme.of(this);
}
