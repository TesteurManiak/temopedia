import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temopedia/styles/Theme.dart';

class TriviaCard extends StatelessWidget {
  final List<String> trivia;

  TriviaCard(this.trivia);

  @override
  Widget build(BuildContext context) {
    List<Widget> _cards = List();
    trivia.forEach(
      (info) => _cards.add(Text(
        info,
        textAlign: TextAlign.center,
        style: GoogleFonts.patrickHand(
            color: MyColors.lightOrange, letterSpacing: 0.7),
      )),
    );
    return Container(
      decoration: BoxDecoration(
          color: MyColors.background,
          borderRadius: BorderRadius.circular(21.0)),
      alignment: Alignment.center,
      padding: const EdgeInsets.all(8.0),
      child: Column(children: _cards),
    );
  }
}
