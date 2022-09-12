import 'package:flutter/material.dart';

import '../../styles/theme.dart';

class PriorityChip extends StatelessWidget {
  final String priority;

  const PriorityChip(this.priority, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: MyColors.lightBackground,
      label: Image.asset("assets/${priority.toLowerCase()}.png", height: 25),
    );
  }
}
