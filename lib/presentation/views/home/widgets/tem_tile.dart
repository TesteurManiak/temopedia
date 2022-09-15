import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../../../core/logging.dart';
import '../../../../router.dart';
import '../../../../styles/text_styles.dart';
import '../../../../styles/theme.dart';
import 'tile_type.dart';

class TemTile extends StatelessWidget {
  final TemTemApiTem temtem;

  const TemTile(this.temtem, {super.key});

  @override
  Widget build(BuildContext context) {
    final borderRadius = BorderRadius.circular(15);
    return LayoutBuilder(
      builder: (context, constrains) {
        final itemHeight = constrains.maxHeight;
        return Container(
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            borderRadius: borderRadius,
          ),
          child: ColoredBox(
            color: MyColors.lightBackground,
            child: InkWell(
              borderRadius: borderRadius,
              onTap: () => context.pushNamed(
                AppRoute.temtem.name,
                extra: temtem,
              ),
              splashColor: Colors.white10,
              highlightColor: Colors.white10,
              child: Stack(
                children: <Widget>[
                  _buildCardContent(),
                  ..._buildDecorations(itemHeight),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildCardContent() {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: temtem.name,
              child: Material(
                color: Colors.transparent,
                child: Text(
                  temtem.name,
                  style: TextStyles.temtemName,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ..._buildTypes(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildDecorations(double itemHeight) {
    return [
      Positioned(
        bottom: 0,
        right: 0,
        child: Hero(
          tag: temtem.wikiPortraitUrlLarge,
          child: _TemtemImage(
            itemHeight: itemHeight,
            imageUrl: temtem.wikiPortraitUrlLarge,
          ),
        ),
      ),
      Positioned(
        top: 10,
        right: 14,
        child: Text(
          "#${temtem.number}",
          style: TextStyles.temtemNumber,
        ),
      ),
    ];
  }

  List<Widget> _buildTypes() {
    final widgetTypes = temtem.types
        .map(TileType.new)
        .expand((item) => [item, const SizedBox(height: 6)]);
    return widgetTypes.toList();
  }
}

class _TemtemImage extends StatelessWidget {
  final double itemHeight;
  final String imageUrl;

  const _TemtemImage({
    required this.itemHeight,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (_, __) => Image.asset("assets/temtem_unknown.png"),
      errorWidget: (_, url, error) {
        Log.e('Failed to load image: $url - $error');
        return const Icon(Icons.error);
      },
      fit: BoxFit.contain,
      width: itemHeight * 0.6,
      height: itemHeight * 0.6,
      alignment: Alignment.bottomRight,
    );
  }
}
