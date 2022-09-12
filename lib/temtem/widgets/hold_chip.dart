import 'package:flutter/material.dart';

import '../../styles/text_styles.dart';
import '../../styles/theme.dart';

class HoldChip extends StatelessWidget {
  final int hold;

  const HoldChip(this.hold, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: MyColors.lightBackground,
      label: Text("Hold: $hold", style: TextStyles.lightText),
    );
  }
}
