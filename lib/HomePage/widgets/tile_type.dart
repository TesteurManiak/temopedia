import 'package:flutter/material.dart';
import 'package:temopedia/extensions/extensions.dart';
import 'package:temopedia/styles/text_styles.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class TileType extends StatelessWidget {
  final Type type;
  final bool large;

  const TileType(this.type, {super.key, this.large = false});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        alignment: Alignment.center,
        width: large ? 78 : 60,
        padding: EdgeInsets.symmetric(
          horizontal: large ? 18 : 12,
          vertical: large ? 6 : 4,
        ),
        decoration: ShapeDecoration(
          shape: StadiumBorder(side: BorderSide(color: type.toTypeColor())),
          color: Colors.white.withOpacity(0.2),
        ),
        child: Text(
          type.name,
          style: large ? TextStyles.itemLarge : TextStyles.itemSmall,
        ),
      ),
    );
  }
}
