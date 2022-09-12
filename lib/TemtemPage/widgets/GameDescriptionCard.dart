import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';

class GameDescriptionCard extends StatelessWidget {
  final String gameDescription;

  GameDescriptionCard(this.gameDescription);

  @override
  Widget build(BuildContext context) {
    return gameDescription.isEmpty
        ? SizedBox.shrink()
        : Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Container(
              decoration: BoxDecoration(
                  color: MyColors.background,
                  borderRadius: BorderRadius.circular(21)),
              alignment: Alignment.center,
              padding: EdgeInsets.all(16),
              child: Text(gameDescription, style: TextStyles.lightText),
            ),
          );
  }
}
