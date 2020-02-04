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
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("#${temtem.number}", style: textStyle),
          SizedBox(width: 5),
          Text(temtem.name.toUpperCase(), style: textStyle),
        ],
      ),
    );
  }
}
