import 'package:flutter/material.dart';

class SliverSpace extends StatelessWidget {
  const SliverSpace(
    this.size, {
    super.key,
    this.axis,
  });

  final double size;

  /// Defaults to [Axis.vertical].
  final Axis? axis;

  @override
  Widget build(BuildContext context) {
    final localAxis = axis ?? Axis.vertical;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: localAxis == Axis.vertical ? size : null,
        width: localAxis == Axis.horizontal ? size : null,
      ),
    );
  }
}
