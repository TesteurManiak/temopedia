import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';

class CatchRateCard extends StatelessWidget {
  final int catchRate;

  CatchRateCard(this.catchRate);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        alignment: Alignment.centerLeft,
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
            color: MyColors.background,
            borderRadius: BorderRadius.circular(21)),
        child: Text("Catch rate: $catchRate", style: TextStyles.catchRate),
      ),
    );
  }
}
