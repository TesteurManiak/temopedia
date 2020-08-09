import 'package:flutter/material.dart';
import 'package:temopedia/Models/GenderRatio.dart';
import 'package:temopedia/styles/Theme.dart';

class GenderRatioCard extends StatelessWidget {
  final GenderRatio genderRatio;

  final textStyle = TextStyle(height: 0.8, color: MyColors.lightFont);

  GenderRatioCard(this.genderRatio);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
        decoration: BoxDecoration(
          color: MyColors.background,
          borderRadius: BorderRadius.circular(21),
        ),
        child: Row(
          children: <Widget>[
            Expanded(child: Text("Gender:", style: textStyle)),
            Expanded(
              child: Row(
                children: <Widget>[
                  Image.asset("assets/male.png", width: 12, height: 12),
                  SizedBox(width: 4),
                  Text("${genderRatio.male} %", style: textStyle),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Row(
                children: <Widget>[
                  Image.asset("assets/female.png", width: 12, height: 12),
                  SizedBox(width: 4),
                  Text("${genderRatio.female} %", style: textStyle),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
