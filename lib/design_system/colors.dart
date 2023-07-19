import 'package:flutter/material.dart';

import 'package:temopedia/design_system/palette.dart';
import 'package:temopedia/design_system/theme.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.bottomSheet,
    required this.appBar,
    required this.scaffold,
    required this.activeButton,
    required this.disabledButton,
    required this.dialog,
  });

  const AppColors.dark()
      : this(
          bottomSheet: Palette.black,
          appBar: Colors.transparent,
          scaffold: MyColors.background,
          activeButton: Palette.cyan,
          disabledButton: Palette.grey,
          dialog: Palette.black,
        );

  final Color bottomSheet;
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
    Color? appBar,
    Color? scaffold,
    Color? activeButton,
    Color? disabledButton,
    Color? dialog,
  }) {
    return AppColors(
      bottomSheet: bottomSheet ?? this.bottomSheet,
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
      appBar: Color.lerp(appBar, other.appBar, t)!,
      scaffold: Color.lerp(scaffold, other.scaffold, t)!,
      activeButton: Color.lerp(activeButton, other.activeButton, t)!,
      disabledButton: Color.lerp(disabledButton, other.disabledButton, t)!,
      dialog: Color.lerp(dialog, other.dialog, t)!,
    );
  }
}
