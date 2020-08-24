import 'package:flutter/material.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';

class TypeFoundCard extends StatelessWidget {
  final List<String> types;
  final Temtem temtem;

  TypeFoundCard(this.types, this.temtem);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.background,
        borderRadius: BorderRadius.circular(21),
      ),
      padding: EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Text("Type(s) found:", style: TextStyles.lightText),
          SizedBox(width: 8),
          Wrap(
            spacing: 5,
            children: <Widget>[...types.map((type) => TypeChip(type)).toList()],
          )
        ],
      ),
    );
  }
}
