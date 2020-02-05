import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temopedia/styles/Theme.dart';

class ClassChip extends StatelessWidget {
  final String className;
  final int damage;

  ClassChip(this.className, this.damage);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: MyColors.lightBackground,
      avatar: Image.asset("assets/$className.png"),
      label: Text(damage.toString(),
          style: GoogleFonts.patrickHand(
              color: MyColors.lightOrange, letterSpacing: 0.7)),
    );
  }
}
