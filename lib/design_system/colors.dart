import 'package:flutter/material.dart';

import 'palette.dart';
import 'theme.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.bottomSheet,
    required this.speedDialBackground,
    required this.speedDialIcon,
    required this.appBar,
    required this.scaffold,
    required this.activeButton,
    required this.disabledButton,
    required this.dialog,
  });

  const AppColors.dark()
      : this(
          bottomSheet: Palette.black,
          speedDialBackground: MyColors.background,
          speedDialIcon: MyColors.lightFont,
          appBar: Colors.transparent,
          scaffold: MyColors.background,
          activeButton: Palette.cyan,
          disabledButton: Palette.grey,
          dialog: Palette.black,
        );

  final Color bottomSheet;
  final Color speedDialBackground;
  final Color speedDialIcon;
  final Color appBar;
  final Color scaffold;
  final Color activeButton;
  final Color disabledButton;
  final Color dialog;

  static AppColors of(BuildContext context) {
    return maybeOf(context)!;
  }

  static AppColors? maybeOf(BuildContext context) {
    return AppTheme.maybeOf(context)?.colors;
  }

  @override
  AppColors copyWith({
    Color? bottomSheet,
    Color? speedDialBackground,
    Color? speedDialIcon,
    Color? appBar,
    Color? scaffold,
    Color? activeButton,
    Color? disabledButton,
    Color? dialog,
  }) {
    return AppColors(
      bottomSheet: bottomSheet ?? this.bottomSheet,
      speedDialBackground: speedDialBackground ?? this.speedDialBackground,
      speedDialIcon: speedDialIcon ?? this.speedDialIcon,
      appBar: appBar ?? this.appBar,
      scaffold: scaffold ?? this.scaffold,
      activeButton: activeButton ?? this.activeButton,
      disabledButton: disabledButton ?? this.disabledButton,
      dialog: dialog ?? this.dialog,
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
      activeButton: Color.lerp(activeButton, other.activeButton, t)!,
      disabledButton: Color.lerp(disabledButton, other.disabledButton, t)!,
      dialog: Color.lerp(dialog, other.dialog, t)!,
    );
  }
}
