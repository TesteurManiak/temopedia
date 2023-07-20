import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'border_radius.tailor.dart';

@TailorMixin()
class AppBorderRadius extends ThemeExtension<AppBorderRadius>
    with DiagnosticableTreeMixin, _$AppBorderRadiusTailorMixin {
  const AppBorderRadius({
    required this.dialog,
  });

  const AppBorderRadius.regular()
      : this(
          dialog: const BorderRadius.all(Radius.circular(12)),
        );

  @override
  final BorderRadiusGeometry dialog;
}
