import 'package:flutter/material.dart';
import 'package:temopedia/styles/text_styles.dart';
import 'package:temopedia/styles/theme.dart';

class HoldChip extends StatelessWidget {
  final int hold;

  const HoldChip(this.hold);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: MyColors.lightBackground,
      label: Text("Hold: $hold", style: TextStyles.lightText),
    );
  }
}
