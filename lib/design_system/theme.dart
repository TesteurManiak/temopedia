import 'package:flutter/material.dart';
import 'package:temopedia/design_system/colors.dart';
import 'package:temopedia/design_system/text_styles.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData dark() {
    const colors = AppColors.dark();
    const textTheme = AppTextTheme.regular();

    final baseDark = ThemeData.dark();
    return baseDark.copyWith(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: colors.scaffold,
      appBarTheme: AppBarTheme(
        color: colors.appBar,
        elevation: 0,
        centerTitle: true,
      ),
      dialogBackgroundColor: colors.dialog,
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: colors.bottomSheet,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
      ),
      extensions: [
        colors,
        textTheme,
      ],
    );
  }
}
