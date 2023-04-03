import 'package:flutter/material.dart';

import 'sliver_space.dart';

class BottomSliverSpace extends StatelessWidget {
  const BottomSliverSpace({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverSafeArea(
      sliver: SliverSpace(16),
    );
  }
}
