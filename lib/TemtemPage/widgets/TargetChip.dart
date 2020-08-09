import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';

class TargetChip extends StatelessWidget {
  final String targets;

  TargetChip(this.targets);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: MyColors.lightBackground,
      avatar: Icon(Icons.person, color: Colors.white),
      label: Text(targets, style: TextStyles.lightText),
    );
  }
}
