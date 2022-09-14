import 'package:flutter/material.dart';

import '../styles/theme.dart';

@immutable
class AppColors extends ThemeExtension<AppColors> {
  const AppColors({
    required this.bottomSheet,
  });

  final Color bottomSheet;

  const AppColors.dark()
      : this(
          bottomSheet: MyColors.background,
        );

  @override
  AppColors copyWith({Color? bottomSheet}) {
    return AppColors(
      bottomSheet: bottomSheet ?? this.bottomSheet,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) {
      return this;
    }
    return AppColors(
      bottomSheet: Color.lerp(bottomSheet, other.bottomSheet, t)!,
    );
  }
}
