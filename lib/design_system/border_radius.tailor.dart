// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'border_radius.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppBorderRadiusTailorMixin
    on ThemeExtension<AppBorderRadius>, DiagnosticableTreeMixin {
  BorderRadiusGeometry get dialog;

  @override
  AppBorderRadius copyWith({
    BorderRadiusGeometry? dialog,
  }) {
    return AppBorderRadius(
      dialog: dialog ?? this.dialog,
    );
  }

  @override
  AppBorderRadius lerp(
      covariant ThemeExtension<AppBorderRadius>? other, double t) {
    if (other is! AppBorderRadius) return this as AppBorderRadius;
    return AppBorderRadius(
      dialog: t < 0.5 ? dialog : other.dialog,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppBorderRadius &&
            const DeepCollectionEquality().equals(dialog, other.dialog));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(dialog),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppBorderRadius'))
      ..add(DiagnosticsProperty('dialog', dialog));
  }
}

extension AppBorderRadiusBuildContextProps on BuildContext {
  AppBorderRadius get appBorderRadius =>
      Theme.of(this).extension<AppBorderRadius>()!;
  BorderRadiusGeometry get dialog => appBorderRadius.dialog;
}
