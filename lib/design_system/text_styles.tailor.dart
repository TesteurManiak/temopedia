// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'text_styles.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppTextThemeTailorMixin
    on ThemeExtension<AppTextTheme>, DiagnosticableTreeMixin {
  TextStyle get generic;
  TextStyle get genericBold;

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
  AppTextTheme lerp(covariant ThemeExtension<AppTextTheme>? other, double t) {
    if (other is! AppTextTheme) return this as AppTextTheme;
    return AppTextTheme(
      generic: TextStyle.lerp(generic, other.generic, t)!,
      genericBold: TextStyle.lerp(genericBold, other.genericBold, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppTextTheme &&
            const DeepCollectionEquality().equals(generic, other.generic) &&
            const DeepCollectionEquality()
                .equals(genericBold, other.genericBold));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(generic),
      const DeepCollectionEquality().hash(genericBold),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppTextTheme'))
      ..add(DiagnosticsProperty('generic', generic))
      ..add(DiagnosticsProperty('genericBold', genericBold));
  }
}

extension AppTextThemeBuildContextProps on BuildContext {
  AppTextTheme get appTextTheme => Theme.of(this).extension<AppTextTheme>()!;
  TextStyle get generic => appTextTheme.generic;
  TextStyle get genericBold => appTextTheme.genericBold;
}
