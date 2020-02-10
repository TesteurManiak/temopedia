import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class ClassChip extends StatelessWidget {
  final String className;
  final int damage;

  ClassChip(this.className, this.damage);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: MyColors.lightBackground,
      avatar: Image.asset("assets/${className.toLowerCase()}.png"),
      label:
          Text(damage.toString(), style: TextStyle(color: MyColors.lightFont)),
    );
  }
}
