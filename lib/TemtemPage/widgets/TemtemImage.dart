import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/styles/Theme.dart';

class TemtemImage extends StatelessWidget {
  final Temtem temtem;
  final TextStyle style = TextStyle(
    fontSize: 19.0,
    color: MyColors.textInfo,
    fontWeight: FontWeight.bold,
  );

  TemtemImage(this.temtem);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
            color: MyColors.temtemInfo),
        padding: const EdgeInsets.all(8.0),
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            CachedNetworkImage(imageUrl: temtem.wikiPortraitUrlLarge),
            Text(temtem.name.toUpperCase(), style: style),
            Text("#${temtem.number}", style: style),
          ],
        ),
      ),
    );
  }
}
