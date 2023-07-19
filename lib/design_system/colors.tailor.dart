// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'colors.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$AppColorsTailorMixin
    on ThemeExtension<AppColors>, DiagnosticableTreeMixin {
  Color get bottomSheet;
  Color get appBar;
  Color get scaffold;
  Color get activeButton;
  Color get disabledButton;
  Color get dialog;

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
  AppColors lerp(covariant ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this as AppColors;
    return AppColors(
      bottomSheet: Color.lerp(bottomSheet, other.bottomSheet, t)!,
      appBar: Color.lerp(appBar, other.appBar, t)!,
      scaffold: Color.lerp(scaffold, other.scaffold, t)!,
      activeButton: Color.lerp(activeButton, other.activeButton, t)!,
      disabledButton: Color.lerp(disabledButton, other.disabledButton, t)!,
      dialog: Color.lerp(dialog, other.dialog, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppColors &&
            const DeepCollectionEquality()
                .equals(bottomSheet, other.bottomSheet) &&
            const DeepCollectionEquality().equals(appBar, other.appBar) &&
            const DeepCollectionEquality().equals(scaffold, other.scaffold) &&
            const DeepCollectionEquality()
                .equals(activeButton, other.activeButton) &&
            const DeepCollectionEquality()
                .equals(disabledButton, other.disabledButton) &&
            const DeepCollectionEquality().equals(dialog, other.dialog));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(bottomSheet),
      const DeepCollectionEquality().hash(appBar),
      const DeepCollectionEquality().hash(scaffold),
      const DeepCollectionEquality().hash(activeButton),
      const DeepCollectionEquality().hash(disabledButton),
      const DeepCollectionEquality().hash(dialog),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppColors'))
      ..add(DiagnosticsProperty('bottomSheet', bottomSheet))
      ..add(DiagnosticsProperty('appBar', appBar))
      ..add(DiagnosticsProperty('scaffold', scaffold))
      ..add(DiagnosticsProperty('activeButton', activeButton))
      ..add(DiagnosticsProperty('disabledButton', disabledButton))
      ..add(DiagnosticsProperty('dialog', dialog));
  }
}

extension AppColorsBuildContextProps on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;
  Color get bottomSheet => appColors.bottomSheet;
  Color get appBar => appColors.appBar;
  Color get scaffold => appColors.scaffold;
  Color get activeButton => appColors.activeButton;
  Color get disabledButton => appColors.disabledButton;
  Color get dialog => appColors.dialog;
}
