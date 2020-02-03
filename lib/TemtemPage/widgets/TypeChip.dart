import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TypeChip extends StatelessWidget {
  final String type;

  TypeChip(this.type);

  @override
  Widget build(BuildContext context) {
    Widget _chip = Text(type);
    globals.types.forEach((item) {
      if (item.name.toLowerCase() == type.toLowerCase())
        _chip = Container(
          height: 25,
          child: CachedNetworkImage(
              imageUrl: "https://temtem-api.mael.tech${item.icon}"),
        );
    });
    return _chip;
  }
}
