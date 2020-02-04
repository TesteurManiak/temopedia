import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TypeChip extends StatelessWidget {
  final String type;

  TypeChip(this.type);

  @override
  Widget build(BuildContext context) {
    Widget _chip = Chip(
        label: Text(
      type,
      style: GoogleFonts.patrickHand(
          color: MyColors.background, letterSpacing: 0.7),
    ));
    globals.types.forEach((item) {
      if (item.name.toLowerCase() == type.toLowerCase())
        _chip = Chip(
          backgroundColor: MyColors.lightOrange,
          avatar: CachedNetworkImage(
              imageUrl: "https://temtem-api.mael.tech${item.icon}"),
          label: Text(item.name,
              style: GoogleFonts.patrickHand(
                  color: MyColors.background, letterSpacing: 0.7)),
        );
    });
    return _chip;
  }
}
