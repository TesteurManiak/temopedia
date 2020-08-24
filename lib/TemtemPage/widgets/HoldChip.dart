import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';

class HoldChip extends StatelessWidget {
  final int hold;

  HoldChip(this.hold);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: MyColors.lightBackground,
      label: Text("Hold: $hold", style: TextStyles.lightText),
    );
  }
}
