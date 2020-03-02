import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class CatchRateCard extends StatelessWidget {
  final int catchRate;

  final textStyle = TextStyle(height: 0.8, color: MyColors.lightFont);

  CatchRateCard(this.catchRate);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
      decoration: BoxDecoration(
          color: MyColors.background, borderRadius: BorderRadius.circular(21)),
      child: Text("Catch rate: $catchRate", style: textStyle),
    );
  }
}
