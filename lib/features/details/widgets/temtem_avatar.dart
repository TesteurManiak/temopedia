import 'package:flutter/material.dart';
import 'package:temopedia/core/widgets/app_network_image.dart';
import 'package:temopedia/design_system/palette.dart';
import 'package:temopedia/gen/assets.gen.dart';

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
  late final showLumaNotifier = ValueNotifier<bool>(false);

  @override
  void dispose() {
    showLumaNotifier.dispose();
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
              valueListenable: showLumaNotifier,
              builder: (_, showLuma, __) {
                return AnimatedCrossFade(
                  firstChild: _AvatarImage(widget.url),
                  secondChild: _AvatarImage(widget.lumaUrl),
                  crossFadeState: showLuma
                      ? CrossFadeState.showSecond
                      : CrossFadeState.showFirst,
                  duration: const Duration(milliseconds: 300),
                );
              },
            ),
          ),
        ),
        if (lumaUrl != null)
          Positioned(
            top: 4,
            left: 0,
            child: GestureDetector(
              onTap: () => showLumaNotifier.value = !showLumaNotifier.value,
              child: ValueListenableBuilder(
                valueListenable: showLumaNotifier,
                builder: (_, showLuma, __) {
                  return _AnimatedSwitchIcon(
                    turns: showLuma ? 0 : 1,
                  );
                },
              ),
            ),
          ),
      ],
    );
  }
}

class _AvatarImage extends StatelessWidget {
  const _AvatarImage(this.url);

  final String? url;

  @override
  Widget build(BuildContext context) {
    return AppNetworkImage(
      url: url,
      placeholder: (_, __) => const CircularProgressIndicator(),
      errorWidget: (_, __, ___) {
        return Image.asset(Assets.icons.icnUnknown.path);
      },
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
      child: const Icon(
        Icons.change_circle,
        size: 36,
      ),
    );
  }
}
