import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/extensions/extensions.dart' show StringModifier;

class TileType extends StatelessWidget {
  final String type;
  final bool large;

  TileType(this.type, {this.large = false});

  @override
  Widget build(BuildContext context) {
    return _typeWidget(type);
  }

  Widget _typeWidget(String item) {
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
          item,
          style: large ? TextStyles.itemLarge : TextStyles.itemSmall,
        ),
      ),
    );
  }
}
