import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TypeChip extends StatelessWidget {
  final String type;
  final Color color;

  TypeChip(this.type, {this.color});

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
          backgroundColor: color ?? MyColors.background,
          avatar: CachedNetworkImage(
            imageUrl: "https://temtem-api.mael.tech${item.icon}",
            placeholder: (context, url) => Image.asset("assets/unknown.png"),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          label: Text(item.name,
              style: GoogleFonts.patrickHand(
                  color: MyColors.lightOrange, letterSpacing: 0.7)),
        );
    });
    return _chip;
  }
}
