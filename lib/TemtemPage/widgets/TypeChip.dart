import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/Models/Type.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TypeChip extends StatelessWidget {
  final String type;
  final bool dispTitle;

  TypeChip(this.type, {this.dispTitle = true});

  Widget _typeWidget(TemType item) {
    if (!dispTitle)
      return CircleAvatar(
        backgroundColor: MyColors.lightBackground,
        child: CachedNetworkImage(
          imageUrl: "https://temtem-api.mael.tech${item.icon}",
          placeholder: (context, url) => Image.asset("assets/unknown.png"),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      );
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

  Widget _unknownWidget() {
    if (!dispTitle)
      return CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Image.asset("assets/unknown.png"),
      );
    return Chip(
      elevation: 0.0,
      backgroundColor: MyColors.lightBackground,
      label: Text(type, style: TextStyle(color: MyColors.lightFont)),
      avatar: Image.asset("assets/unknown.png"),
    );
  }

  @override
  Widget build(BuildContext context) {
    for (var item in globals.types) {
      if (item.name.toLowerCase() == type.toLowerCase())
        return _typeWidget(item);
    }
    return _unknownWidget();
  }
}
