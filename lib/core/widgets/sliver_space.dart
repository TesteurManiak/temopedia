import 'package:flutter/material.dart';

class SliverSpace extends StatelessWidget {
  const SliverSpace(this.size, {super.key});

  final double size;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        height: size,
      ),
    );
  }
}
