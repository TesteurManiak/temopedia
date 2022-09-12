import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/styles/theme.dart';

class TemtemImage extends StatelessWidget {
  final String url;
  final double height;

  const TemtemImage(this.url, this.height, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(
        border: Border.all(color: MyColors.border, width: 5),
        shape: BoxShape.circle,
        color: MyColors.portraitBack,
        image: DecorationImage(
          image: CachedNetworkImageProvider(url),
          fit: BoxFit.contain,
        ),
      ),
      alignment: Alignment.center,
    );
  }
}
