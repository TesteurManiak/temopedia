import 'package:flutter/material.dart';

import '../../styles/text_styles.dart';
import '../../styles/theme.dart';

class TargetChip extends StatelessWidget {
  final String targets;

  const TargetChip(this.targets, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: MyColors.lightBackground,
      avatar: const Icon(Icons.person, color: Colors.white),
      label: Text(targets, style: TextStyles.lightText),
    );
  }
}
