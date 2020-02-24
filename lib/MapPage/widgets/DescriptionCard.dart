import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class DescriptionCard extends StatelessWidget {
  final String description;

  DescriptionCard(this.description);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: MyColors.background,
      ),
      alignment: Alignment.center,
      padding: EdgeInsets.all(16),
      child: Text(description, style: TextStyle(color: MyColors.lightFont)),
    );
  }
}