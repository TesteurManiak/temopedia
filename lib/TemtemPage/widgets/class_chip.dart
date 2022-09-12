import 'package:flutter/material.dart';
import 'package:temopedia/styles/text_styles.dart';
import 'package:temopedia/styles/theme.dart';

class ClassChip extends StatelessWidget {
  final String className;
  final int damage;

  const ClassChip(this.className, this.damage, {super.key});

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: MyColors.lightBackground,
      avatar: Image.asset("assets/${className.toLowerCase()}.png"),
      label: Text(damage.toString(), style: TextStyles.lightText),
    );
  }
}
