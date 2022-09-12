import 'package:flutter/material.dart';

import '../../styles/text_styles.dart';
import '../../styles/theme.dart';

class CatchRateCard extends StatelessWidget {
  final int catchRate;

  const CatchRateCard(this.catchRate, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: MyColors.background,
          borderRadius: BorderRadius.circular(21),
        ),
        child: Text("Catch rate: $catchRate", style: TextStyles.smallLight),
      ),
    );
  }
}
