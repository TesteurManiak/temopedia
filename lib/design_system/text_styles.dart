import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/design_system/palette.dart';
import 'package:temopedia/gen/fonts.gen.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'text_styles.tailor.dart';

@TailorMixin()
class AppTextTheme extends ThemeExtension<AppTextTheme>
    with DiagnosticableTreeMixin, _$AppTextThemeTailorMixin {
  const AppTextTheme({
    required this.generic,
    required this.genericSemiBold,
    required this.genericBold,
  });

  const AppTextTheme.regular()
      : this(
          generic: const TextStyle(
            fontSize: 14,
            fontFamily: FontFamily.rubik,
          ),
          genericSemiBold: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
            fontFamily: FontFamily.rubik,
          ),
          genericBold: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: FontFamily.rubik,
          ),
        );

  @override
  final TextStyle generic;

  @override
  final TextStyle genericSemiBold;

  @override
  final TextStyle genericBold;
}

@Deprecated('Use AppTextTheme instead')
class TextStyles {
  @Deprecated('Use AppTextTheme instead')
  const TextStyles._();

  static const lightText = TextStyle(color: MyColors.lightFont);
  static const darkText = TextStyle(color: MyColors.darkFont);
  static const background = TextStyle(color: MyColors.background);
  static final lightBold = lightText.copyWith(fontWeight: FontWeight.bold);
  static final darkBold = darkText.copyWith(fontWeight: FontWeight.bold);
  static final location = lightText.copyWith(fontSize: 18);
  static final temtemName = lightBold.copyWith(fontSize: 14, height: 0.7);
  static TextStyle smallLight = lightText.copyWith(height: 0.8);
  static TextStyle evolLevel = lightBold.copyWith(fontSize: 12);
  static TextStyle detailsLabel = darkText.copyWith(height: 0.8);
  static final detailsHW = lightText.copyWith(fontSize: 25);
  static const weak = TextStyle(
    color: Colors.red,
    fontWeight: FontWeight.bold,
  );
  static TextStyle normal = const TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static TextStyle resist =
      const TextStyle(color: Colors.green, fontWeight: FontWeight.bold);
  static TextStyle temtemNumber = TextStyle(
    color: Colors.white.withOpacity(0.4),
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );
  static TextStyle itemLarge = const TextStyle(
    height: 0.8,
    fontSize: 12,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );
  static TextStyle itemSmall = const TextStyle(
    fontSize: 8,
    height: 0.8,
    color: Colors.white,
  );
  static TextStyle mainName = lightText.copyWith(fontSize: 35);
  static TextStyle number = darkText.copyWith(fontSize: 22);
}
