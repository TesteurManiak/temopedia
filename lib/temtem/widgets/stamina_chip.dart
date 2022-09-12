import 'package:flutter/material.dart';

import '../../styles/text_styles.dart';

class StaminaChip extends StatelessWidget {
  final int staminaCost;

  const StaminaChip(this.staminaCost, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.blue,
      label: Text("Cost: $staminaCost", style: TextStyles.normal),
    );
  }
}
