import 'package:flutter/material.dart';

import 'details_container.dart';

class TraitsSection extends StatelessWidget {
  const TraitsSection({
    super.key,
    required this.traits,
  });

  final List<String> traits;

  @override
  Widget build(BuildContext context) {
    return const DetailsContainer(
      title: 'Traits',
      child: Placeholder(),
    );
  }
}
