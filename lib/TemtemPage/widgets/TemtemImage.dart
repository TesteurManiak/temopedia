import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class TemtemImage extends StatelessWidget {
  final String url;
  final double height;
  final TextStyle style = TextStyle(
    fontSize: 19.0,
    color: MyColors.textInfo,
    fontWeight: FontWeight.bold,
  );

  TemtemImage(this.url, this.height);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: MyColors.darkOrange,
        image: DecorationImage(image: CachedNetworkImageProvider(url)),
      ),
      padding: const EdgeInsets.all(12.0),
      alignment: Alignment.center,
    );
  }
}
