import 'package:flutter/material.dart';

import '../styles/theme.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.bottomSheet,
    required this.speedDialBackground,
    required this.speedDialIcon,
  });

  final Color bottomSheet;
  final Color speedDialBackground;
  final Color speedDialIcon;

  const AppColors.dark()
      : this(
          bottomSheet: MyColors.background,
          speedDialBackground: MyColors.background,
          speedDialIcon: MyColors.lightFont,
        );

  @override
  AppColors copyWith({
    Color? bottomSheet,
    Color? speedDialBackground,
    Color? speedDialIcon,
  }) {
    return AppColors(
      bottomSheet: bottomSheet ?? this.bottomSheet,
      speedDialBackground: speedDialBackground ?? this.speedDialBackground,
      speedDialIcon: speedDialIcon ?? this.speedDialIcon,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      bottomSheet: Color.lerp(bottomSheet, other.bottomSheet, t)!,
      speedDialBackground:
          Color.lerp(speedDialBackground, other.speedDialBackground, t)!,
      speedDialIcon: Color.lerp(speedDialIcon, other.speedDialIcon, t)!,
    );
  }
}
