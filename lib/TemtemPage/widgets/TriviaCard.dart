import 'package:flutter/material.dart';
import 'package:temopedia/styles/text_styles.dart';
import 'package:temopedia/styles/theme.dart';

class TriviaCard extends StatelessWidget {
  final List<String> trivia;

  const TriviaCard(this.trivia);

  @override
  Widget build(BuildContext context) {
    return trivia.isEmpty
        ? Container()
        : Container(
            decoration: BoxDecoration(
              color: MyColors.background,
              borderRadius: BorderRadius.circular(21),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                ...trivia
                    .map((elem) => Text(elem, style: TextStyles.lightText))
                    .toList()
              ],
            ),
          );
  }
}
