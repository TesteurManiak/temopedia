import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/HomePage/widgets/tile_type.dart';
import 'package:temopedia/TemtemPage/TemtemArgs.dart';
import 'package:temopedia/TemtemPage/temtem_page_args.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class TemTile extends StatefulWidget {
  final TemTemApiTem temtem;

  const TemTile(this.temtem, {super.key});

  @override
  State<StatefulWidget> createState() => _TemTileState();
}

class _TemTileState extends State<TemTile> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final itemHeight = constrains.maxHeight;
        return Container(
          padding: const EdgeInsets.all(0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Material(
              color: MyColors.lightBackground,
              child: InkWell(
                onTap: () => Navigator.pushNamed(
                  context,
                  TemtemPageArgs.routeName,
                  arguments: TemtemArgs(temtem: widget.temtem),
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
              tag: widget.temtem.name,
              child: Material(
                color: Colors.transparent,
                child: Text(
                  widget.temtem.name,
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
        bottom: 8,
        right: 12,
        child: Hero(
          tag: widget.temtem.wikiPortraitUrlLarge,
          child: _buildImage(itemHeight),
        ),
      ),
      Positioned(
        top: 10,
        right: 14,
        child: Text(
          "#${widget.temtem.number}",
          style: TextStyles.temtemNumber,
        ),
      ),
    ];
  }

  List<Widget> _buildTypes() {
    final widgetTypes = widget.temtem.types
        .map(
          (type) => Hero(
            tag: widget.temtem.name + type.name,
            child: TileType(type),
          ),
        )
        .expand((item) => [item, const SizedBox(height: 6)]);
    return widgetTypes.toList();
  }

  Widget _buildImage(double itemHeight) {
    return CachedNetworkImage(
      imageUrl: widget.temtem.wikiPortraitUrlLarge,
      placeholder: (context, url) => Image.asset("assets/temtem_unknown.png"),
      errorWidget: (context, url, error) => const Icon(Icons.error),
      fit: BoxFit.contain,
      width: itemHeight * 0.6,
      height: itemHeight * 0.6,
      alignment: Alignment.bottomRight,
    );
  }
}
