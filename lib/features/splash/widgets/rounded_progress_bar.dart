import 'package:flutter/material.dart';

class RoundedProgressBar extends ProgressIndicator {
  const RoundedProgressBar({
    super.key,
    super.value,
    this.minHeight,
  });

  /// The minimum height of the progress indicator.
  ///
  /// Defaults to 4.0.
  final double? minHeight;

  @override
  State<StatefulWidget> createState() => _RoundedProgressBarState();
}

class _RoundedProgressBarState extends State<RoundedProgressBar>
    with SingleTickerProviderStateMixin {
  late final controller = AnimationController(
    duration: const Duration(milliseconds: 1800),
    vsync: this,
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
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: widget.minHeight ?? 4.0,
      ),
      child: CustomPaint(
        painter: _RoundedProgressPainter(
          animation: controller,
          backgroundColor: Colors.grey.shade300,
          foregroundColor: Colors.blue,
        ),
      ),
    );
  }
}

class _RoundedProgressPainter extends CustomPainter {
  _RoundedProgressPainter({
    required this.animation,
    required this.backgroundColor,
    required this.foregroundColor,
  }) : super(
          repaint: animation,
        );

  final Animation<double> animation;
  final Color backgroundColor;
  final Color foregroundColor;

  @override
  void paint(Canvas canvas, Size size) {
    // paint the rounded background bar first
    final backgroundPaint = Paint()
      ..color = backgroundColor
      ..style = PaintingStyle.fill;

    final backgroundPath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width, size.height),
          Radius.circular(size.height / 2),
        ),
      );

    canvas.drawPath(backgroundPath, backgroundPaint);

    // paint the rounded foreground bar
    final foregroundPaint = Paint()
      ..color = foregroundColor
      ..style = PaintingStyle.fill;

    final foregroundPath = Path()
      ..addRRect(
        RRect.fromRectAndRadius(
          Rect.fromLTWH(0, 0, size.width * animation.value, size.height),
          Radius.circular(size.height / 2),
        ),
      );

    canvas.drawPath(foregroundPath, foregroundPaint);
  }

  @override
  bool shouldRepaint(_RoundedProgressPainter oldDelegate) {
    return oldDelegate.backgroundColor != backgroundColor ||
        oldDelegate.foregroundColor != foregroundColor;
  }
}
