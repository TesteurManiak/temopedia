import 'package:flutter/material.dart';

import '../gen/fonts.gen.dart';
import 'palette.dart';
import 'theme.dart';

@immutable
class AppTextTheme extends ThemeExtension<AppTextTheme> {
  const AppTextTheme({
    required this.generic,
    required this.genericBold,
  });

  const AppTextTheme.regular()
      : this(
          generic: const TextStyle(
            fontSize: 14,
            fontFamily: FontFamily.rubik,
          ),
          genericBold: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            fontFamily: FontFamily.rubik,
          ),
        );

  final TextStyle generic;
  final TextStyle genericBold;

  static AppTextTheme of(BuildContext context) {
    return maybeOf(context)!;
  }

  static AppTextTheme? maybeOf(BuildContext context) {
    return AppTheme.maybeOf(context)?.textTheme;
  }

  @override
  AppTextTheme copyWith({
    TextStyle? generic,
    TextStyle? genericBold,
  }) {
    return AppTextTheme(
      generic: generic ?? this.generic,
      genericBold: genericBold ?? this.genericBold,
    );
  }

  @override
  AppTextTheme lerp(ThemeExtension<AppTextTheme>? other, double t) {
    if (other is! AppTextTheme) {
      return this;
    }

    return AppTextTheme(
      generic: TextStyle.lerp(generic, other.generic, t)!,
      genericBold: TextStyle.lerp(genericBold, other.genericBold, t)!,
    );
  }
}

@Deprecated('Use AppTextTheme instead')
class TextStyles {
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
