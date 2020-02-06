import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class TriviaCard extends StatelessWidget {
  final List<String> trivia;

  TriviaCard(this.trivia);

  @override
  Widget build(BuildContext context) {
    List<Widget> _cards = [];
    trivia.forEach(
      (info) =>
          _cards.add(Text(info, style: TextStyle(color: MyColors.lightFont))),
    );
    return Container(
      decoration: BoxDecoration(
          color: MyColors.background,
          borderRadius: BorderRadius.circular(21.0)),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(16.0),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, children: _cards),
    );
  }
}
