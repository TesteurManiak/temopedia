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
    final textDirection = Directionality.of(context);

    return AnimatedBuilder(
      animation: controller.view,
      builder: (context, _) {
        final minHeight = widget.minHeight ?? 4.0;

        return Container(
          constraints: BoxConstraints(
            minWidth: double.infinity,
            minHeight: minHeight,
          ),
          child: CustomPaint(
            painter: _RoundedProgressPainter(
              animationValue: controller.value,
              textDirection: textDirection,
            ),
          ),
        );
      },
    );
  }
}

class _RoundedProgressPainter extends CustomPainter {
  _RoundedProgressPainter({
    required this.animationValue,
    required this.textDirection,
  });

  final double animationValue;
  final TextDirection textDirection;

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
