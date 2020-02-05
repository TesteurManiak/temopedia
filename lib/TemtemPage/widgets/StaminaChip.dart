import 'package:flutter/material.dart';

class StaminaChip extends StatelessWidget {
  final int staminaCost;

  StaminaChip(this.staminaCost);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: Colors.blue,
      label: Text(
        "Cost: $staminaCost",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
