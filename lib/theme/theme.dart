import 'package:flutter/material.dart';

import 'colors.dart';
import 'radius.dart';

@immutable
class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    required this.colors,
    required this.radius,
    required this.borderRadius,
  });

  final AppColors colors;
  final AppRadius radius;
  final AppBorderRadius borderRadius;

  static ThemeData get dark {
    const appTheme = AppTheme(
      colors: AppColors.dark(),
      radius: AppRadius.regular(),
      borderRadius: AppBorderRadius(AppRadius.regular()),
    );
    final baseDark = ThemeData.dark();
    return baseDark.copyWith(
      brightness: Brightness.dark,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: appTheme.colors.bottomSheet,
        shape: RoundedRectangleBorder(
          borderRadius: appTheme.borderRadius.topBig,
        ),
      ),
    );
  }

  static AppTheme of(BuildContext context) {
    return Theme.of(context).extension<AppTheme>()!;
  }

  @override
  AppTheme copyWith({
    AppColors? colors,
    AppRadius? radius,
    AppBorderRadius? borderRadius,
  }) {
    return AppTheme(
      colors: colors ?? this.colors,
      radius: radius ?? this.radius,
      borderRadius: borderRadius ?? this.borderRadius,
    );
  }

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      colors: colors.lerp(other.colors, t),
      radius: radius.lerp(other.radius, t),
      borderRadius: borderRadius.lerp(other.borderRadius, t),
    );
  }
}
