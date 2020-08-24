import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';

class StaminaChip extends StatelessWidget {
  final int staminaCost;

  StaminaChip(this.staminaCost);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.blue,
      label: Text("Cost: $staminaCost", style: TextStyles.normal),
    );
  }
}
