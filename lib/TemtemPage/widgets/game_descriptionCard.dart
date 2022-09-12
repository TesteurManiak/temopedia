import 'package:flutter/material.dart';
import 'package:temopedia/styles/text_styles.dart';
import 'package:temopedia/styles/theme.dart';

class GameDescriptionCard extends StatelessWidget {
  final String gameDescription;

  const GameDescriptionCard(this.gameDescription, {super.key});

  @override
  Widget build(BuildContext context) {
    return gameDescription.isEmpty
        ? const SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              decoration: BoxDecoration(
                color: MyColors.background,
                borderRadius: BorderRadius.circular(21),
              ),
              alignment: Alignment.center,
              padding: const EdgeInsets.all(16),
              child: Text(gameDescription, style: TextStyles.lightText),
            ),
          );
  }
}
