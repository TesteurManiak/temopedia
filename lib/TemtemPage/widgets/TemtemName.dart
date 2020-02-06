import 'package:flutter/material.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/styles/Theme.dart';

class TemtemName extends StatelessWidget {
  final Temtem temtem;
  final textStyle = TextStyle(
    color: MyColors.background,
    fontSize: 19,
    fontWeight: FontWeight.bold,
  );

  TemtemName(this.temtem);

  @override
  Widget build(BuildContext context) {
    String number = "";
    if (temtem.number < 100) number += "0";
    if (temtem.number < 10) number += "0";
    number += temtem.number.toString();
    return Container(
      child: Column(
        children: <Widget>[
          Text(temtem.name,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: MyColors.lightFont, fontSize: 35)),
          Text("Temtem #$number",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: MyColors.darkFont, fontSize: 22)),
        ],
      ),
    );
  }
}
