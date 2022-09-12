import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';

class DescriptionCard extends StatelessWidget {
  final String description;

  const DescriptionCard(this.description, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: MyColors.background,
      ),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16),
      child: Text(description, style: TextStyles.lightText),
    );
  }
}
