import 'package:flutter/material.dart';

class ProgressBar extends StatelessWidget {
  final double progress;
  final Color color;

  const ProgressBar({
    super.key,
    required this.progress,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 3,
      alignment: Alignment.centerLeft,
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        color: Colors.transparent,
      ),
      child: FractionallySizedBox(
        widthFactor: progress,
        heightFactor: 1.0,
        child: DecoratedBox(
          decoration: ShapeDecoration(
            shape: const StadiumBorder(),
            color: color,
          ),
        ),
      ),
    );
  }
}
