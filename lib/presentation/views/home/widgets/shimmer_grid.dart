import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../common/logo.dart';
import 'shimmer_tile.dart';

class ShimmerGrid extends StatelessWidget {
  const ShimmerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const AppLogo()),
      backgroundColor: Colors.transparent,
      body: Shimmer.fromColors(
        baseColor: Colors.transparent,
        highlightColor: Colors.grey[100]!,
        period: const Duration(milliseconds: 600),
        child: GridView.count(
          padding: const EdgeInsets.all(8),
          crossAxisCount: 2,
          childAspectRatio: 1.4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: List.generate(9, (_) => const ShimmerTile()),
        ),
      ),
    );
  }
}
