import 'package:flutter/material.dart';

import '../../../core/widgets/app_network_image.dart';
import '../../../design_system/palette.dart';
import '../../../gen/assets.gen.dart';

class TemtemAvatar extends StatefulWidget {
  const TemtemAvatar({
    super.key,
    required this.url,
    this.size,
    this.lumaUrl,
  });

  /// Defaults to 180.0
  final double? size;
  final String url;
  final String? lumaUrl;

  @override
  State<TemtemAvatar> createState() => _TemtemAvatarState();
}

class _TemtemAvatarState extends State<TemtemAvatar> {
  late final urlNotifier = ValueNotifier<String>(widget.url);

  @override
  void dispose() {
    urlNotifier.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = widget.size ?? 180.0;
    final lumaUrl = widget.lumaUrl;

    return Stack(
      children: [
        Container(
          height: size,
          width: size,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Palette.darkPurple,
            border: Border.all(width: 5, color: Palette.darkPurple2),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(size / 2),
            child: ValueListenableBuilder(
              valueListenable: urlNotifier,
              builder: (context, url, _) {
                return AppNetworkImage(
                  url: url,
                  errorWidget: (_, __, ___) {
                    return Image.asset(Assets.icons.icnUnknown.path);
                  },
                );
              },
            ),
          ),
        ),
        if (lumaUrl != null)
          Positioned(
            top: 8,
            left: 8,
            child: GestureDetector(
              onTap: () {
                urlNotifier.value =
                    urlNotifier.value == widget.url ? lumaUrl : widget.url;
              },
              child: ValueListenableBuilder(
                valueListenable: urlNotifier,
                builder: (_, url, __) {
                  return _AnimatedSwitchIcon(
                    turns: url == widget.url ? 0 : 1,
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}

class _AnimatedSwitchIcon extends StatelessWidget {
  const _AnimatedSwitchIcon({
    required this.turns,
  });

  final double turns;

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: turns,
      duration: const Duration(milliseconds: 300),
      child: const Icon(Icons.change_circle),
    );
  }
}
