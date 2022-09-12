import 'package:flutter/material.dart';
import 'package:temopedia/styles/theme.dart';

class PriorityChip extends StatelessWidget {
  final String priority;

  const PriorityChip(this.priority);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: MyColors.lightBackground,
      label: Image.asset("assets/${priority.toLowerCase()}.png", height: 25),
    );
  }
}
