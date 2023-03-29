import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class TemtemAvatar extends StatelessWidget {
  const TemtemAvatar({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: CachedNetworkImageProvider(url),
        ),
      ),
    );
  }
}
