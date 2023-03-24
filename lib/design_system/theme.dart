import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';

@immutable
class AppTheme extends ThemeExtension<AppTheme> {
  const AppTheme({
    required this.colors,
    required this.textTheme,
  });

  final AppColors colors;
  final AppTextTheme textTheme;

  static ThemeData dark() {
    const appTheme = AppTheme(
      colors: AppColors.dark(),
      textTheme: AppTextTheme.regular(),
    );

    final baseDark = ThemeData.dark();
    return baseDark.copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: appTheme.colors.scaffold,
      appBarTheme: AppBarTheme(
        color: appTheme.colors.appBar,
        elevation: 0,
        centerTitle: true,
      ),
      dialogBackgroundColor: appTheme.colors.dialog,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: appTheme.colors.bottomSheet,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
      ),
      extensions: [appTheme],
    );
  }

  static AppTheme of(BuildContext context) {
    return maybeOf(context)!;
  }

  static AppTheme? maybeOf(BuildContext context) {
    return Theme.of(context).extension<AppTheme>();
  }

  @override
  AppTheme copyWith({
    AppColors? colors,
    AppTextTheme? textTheme,
  }) {
    return AppTheme(
      colors: colors ?? this.colors,
      textTheme: textTheme ?? this.textTheme,
    );
  }

  @override
  AppTheme lerp(ThemeExtension<AppTheme>? other, double t) {
    if (other is! AppTheme) {
      return this;
    }
    return AppTheme(
      colors: colors.lerp(other.colors, t),
      textTheme: textTheme.lerp(other.textTheme, t),
    );
  }
}
