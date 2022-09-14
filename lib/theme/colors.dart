import 'package:flutter/material.dart';

import '../styles/theme.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.bottomSheet,
    required this.speedDialBackground,
    required this.speedDialIcon,
    required this.appBar,
    required this.scaffold,
  });

  final Color bottomSheet;
  final Color speedDialBackground;
  final Color speedDialIcon;
  final Color appBar;
  final Color scaffold;

  const AppColors.dark()
      : this(
          bottomSheet: MyColors.background,
          speedDialBackground: MyColors.background,
          speedDialIcon: MyColors.lightFont,
          appBar: Colors.transparent,
          scaffold: MyColors.background,
        );

  @override
  AppColors copyWith({
    Color? bottomSheet,
    Color? speedDialBackground,
    Color? speedDialIcon,
    Color? appBar,
    Color? scaffold,
  }) {
    return AppColors(
      bottomSheet: bottomSheet ?? this.bottomSheet,
      speedDialBackground: speedDialBackground ?? this.speedDialBackground,
      speedDialIcon: speedDialIcon ?? this.speedDialIcon,
      appBar: appBar ?? this.appBar,
      scaffold: scaffold ?? this.scaffold,
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
      appBar: Color.lerp(appBar, other.appBar, t)!,
      scaffold: Color.lerp(scaffold, other.scaffold, t)!,
    );
  }
}
