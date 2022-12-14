import 'dart:math' as math;
import 'dart:ui';

import 'package:flutter/material.dart';

import '../../theme/theme.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.child,
    required this.onPressed,
  });

  factory AppButton.icon({
    Key? key,
    required VoidCallback? onPressed,
    required Widget icon,
    required Widget label,
  }) {
    return AppButton(
      key: key,
      onPressed: onPressed,
      child: _AppButtonWithIconChild(icon: icon, label: label),
    );
  }

  final Widget child;
  final VoidCallback? onPressed;

  bool get enabled => onPressed != null;

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final color =
        enabled ? appTheme.colors.activeButton : appTheme.colors.disabledButton;

    return RawMaterialButton(
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: appTheme.borderRadius.big,
      ),
      fillColor: color,
      onPressed: onPressed,
      child: child,
    );
  }
}

class _AppButtonWithIconChild extends StatelessWidget {
  const _AppButtonWithIconChild({
    required this.label,
    required this.icon,
  });

  final Widget label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final double scale = MediaQuery.maybeOf(context)?.textScaleFactor ?? 1;
    final double gap =
        scale <= 1 ? 8 : lerpDouble(8, 4, math.min(scale - 1, 1))!;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[icon, SizedBox(width: gap), Flexible(child: label)],
    );
  }
}
