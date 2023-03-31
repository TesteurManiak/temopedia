import 'package:flutter/material.dart';

import '../../../core/widgets/app_network_image.dart';
import '../../../design_system/palette.dart';

class TemtemAvatar extends StatelessWidget {
  const TemtemAvatar({
    super.key,
    required this.url,
    this.size,
  });

  /// Defaults to 180.0
  final double? size;
  final String url;

  @override
  Widget build(BuildContext context) {
    final localSize = size ?? 180.0;

    return Container(
      height: localSize,
      width: localSize,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Palette.darkPurple,
        border: Border.all(width: 5, color: Palette.darkPurple2),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(localSize / 2),
        child: AppNetworkImage(url: url),
      ),
    );
  }
}
