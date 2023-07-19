import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:temopedia/design_system/palette.dart';

const _kDefaultMinHeight = 6.0;
const _kDefaultRadius = 12.0;
const _kDefaultBarColor = Palette.orange2;
const _kDefaultBackgroundColor = Palette.darkPurple4;
const _kIndeterminateLinearDuration = 1800;

class RoundedProgressBar extends ProgressIndicator {
  const RoundedProgressBar({
    super.key,
    super.value,
    this.minHeight,
    this.radius,
  }) : super(
          color: _kDefaultBarColor,
          backgroundColor: _kDefaultBackgroundColor,
        );

  /// Defaults to 6.0.
  final double? minHeight;

  /// Defaults to 12.0.
  final double? radius;

  @override
  State<RoundedProgressBar> createState() => _RoundedProgressBarState();
}

class _RoundedProgressBarState extends State<RoundedProgressBar>
    with SingleTickerProviderStateMixin {
  late final controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: _kIndeterminateLinearDuration),
  );

  @override
  void initState() {
    super.initState();

    if (widget.value == null) {
      controller.repeat();
    }
  }

  @override
  void didUpdateWidget(RoundedProgressBar oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (widget.value == null && !controller.isAnimating) {
      controller.repeat();
    } else if (widget.value != null && controller.isAnimating) {
      controller.stop();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final minHeight = widget.minHeight ?? _kDefaultMinHeight;
    final radius = widget.radius ?? _kDefaultRadius;
    final barColor = widget.color ?? _kDefaultBarColor;
    final backgroundColor = widget.backgroundColor ?? _kDefaultBackgroundColor;

    return Container(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: minHeight,
      ),
      child: CustomPaint(
        painter: _RoundedProgressBarPainter(
          value: widget.value,
          animation: controller,
          barColor: barColor,
          backgroundColor: backgroundColor,
          radius: radius,
        ),
      ),
    );
  }
}

class _RoundedProgressBarPainter extends CustomPainter {
  _RoundedProgressBarPainter({
    required this.animation,
    required this.value,
    required this.barColor,
    required this.backgroundColor,
    required this.radius,
  }) : super(
          repaint: animation,
        );

  final Animation<double> animation;
  final double? value;
  final Color barColor;
  final Color backgroundColor;
  final double radius;

  @override
  void paint(Canvas canvas, Size size) {
    final barPaint = Paint()
      ..color = barColor
      ..style = PaintingStyle.fill;

    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    void drawBar(double x, double width, Paint paint) {
      if (width <= 0) return;

      canvas.drawRRect(
        RRect.fromRectAndRadius(
          Offset(x, 0) & Size(width, size.height),
          Radius.circular(radius),
        ),
        paint,
      );
    }

    if (value != null) {
      drawBar(0, size.width, backgroundPaint);
      drawBar(
        0,
        clampDouble(value ?? 0, 0, 1) * size.width,
        barPaint,
      );
    } else {
      final animationValue = animation.value;
      final x1 = size.width * line1Tail.transform(animationValue);
      final width1 = size.width * line1Head.transform(animationValue) - x1;

      final x2 = size.width * line2Tail.transform(animationValue);
      final width2 = size.width * line2Head.transform(animationValue) - x2;

      drawBar(0, size.width, backgroundPaint);
      drawBar(x1, width1, barPaint);
      drawBar(x2, width2, barPaint);
    }
  }

  @override
  bool shouldRepaint(_RoundedProgressBarPainter oldDelegate) {
    return oldDelegate.animation != animation ||
        oldDelegate.value != value ||
        oldDelegate.barColor != barColor ||
        oldDelegate.backgroundColor != backgroundColor ||
        oldDelegate.radius != radius;
  }

  static const Curve line1Head = Interval(
    0,
    750.0 / _kIndeterminateLinearDuration,
    curve: Cubic(0.2, 0, 0.8, 1),
  );
  static const Curve line1Tail = Interval(
    333.0 / _kIndeterminateLinearDuration,
    (333.0 + 750.0) / _kIndeterminateLinearDuration,
    curve: Cubic(0.4, 0, 1, 1),
  );
  static const Curve line2Head = Interval(
    1000.0 / _kIndeterminateLinearDuration,
    (1000.0 + 567.0) / _kIndeterminateLinearDuration,
    curve: Cubic(0, 0, 0.65, 1),
  );
  static const Curve line2Tail = Interval(
    1267.0 / _kIndeterminateLinearDuration,
    (1267.0 + 533.0) / _kIndeterminateLinearDuration,
    curve: Cubic(0.10, 0, 0.45, 1),
  );
}
