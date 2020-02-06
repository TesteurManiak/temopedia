import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TypeChip extends StatelessWidget {
  final String type;

  TypeChip(this.type);

  @override
  Widget build(BuildContext context) {
    for (var item in globals.types) {
      if (item.name.toLowerCase() == type.toLowerCase())
        return Chip(
          elevation: 0.0,
          backgroundColor: MyColors.lightBackground,
          avatar: CachedNetworkImage(
            imageUrl: "https://temtem-api.mael.tech${item.icon}",
            placeholder: (context, url) => Image.asset("assets/unknown.png"),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          label: Text(item.name, style: TextStyle(color: MyColors.lightFont)),
        );
    }
    return Chip(
        label: Text(
      type,
      style: TextStyle(color: MyColors.lightBackground),
    ));
  }
}
