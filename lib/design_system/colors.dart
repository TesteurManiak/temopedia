import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:temopedia/design_system/palette.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'colors.tailor.dart';

@TailorMixin()
class AppColors extends ThemeExtension<AppColors>
    with DiagnosticableTreeMixin, _$AppColorsTailorMixin {
  const AppColors({
    required this.bottomSheet,
    required this.appBar,
    required this.scaffold,
    required this.activeButton,
    required this.disabledButton,
    required this.dialog,
  });

  const AppColors.dark()
      : this(
          bottomSheet: Palette.black,
          appBar: Colors.transparent,
          scaffold: MyColors.background,
          activeButton: Palette.cyan,
          disabledButton: Palette.grey,
          dialog: Palette.darkPurple3,
        );

  @override
  final Color bottomSheet;

  @override
  final Color appBar;

  @override
  final Color scaffold;

  @override
  final Color activeButton;

  @override
  final Color disabledButton;

  @override
  final Color dialog;
}
