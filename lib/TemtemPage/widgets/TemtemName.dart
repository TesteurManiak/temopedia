import 'package:flutter/material.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/styles/TextStyles.dart';

class TemtemName extends StatelessWidget {
  final Temtem temtem;

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
              overflow: TextOverflow.ellipsis, style: TextStyles.mainName),
          Text("Temtem #$number",
              overflow: TextOverflow.ellipsis, style: TextStyles.number),
        ],
      ),
    );
  }
}
