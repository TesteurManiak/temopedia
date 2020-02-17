import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/Database/DatabaseHelper.dart';
import 'package:temopedia/HomePage/widgets/TileType.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/TemtemPage/TemtemPage.dart';
import 'package:temopedia/styles/Theme.dart';

class TemTile extends StatefulWidget {
  final VoidCallback resetFilter;
  final Temtem temtem;
  final DatabaseHelper dbHelper;

  TemTile(this.temtem, this.dbHelper, {@required this.resetFilter});

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
          padding: EdgeInsets.all(0),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Material(
              color: MyColors.lightBackground,
              child: InkWell(
                onTap: () {
                  widget.resetFilter();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              TemtemPage(widget.temtem, widget.dbHelper)));
                },
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
                  style: TextStyle(
                    fontSize: 14,
                    height: 0.7,
                    fontWeight: FontWeight.bold,
                    color: MyColors.lightFont,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            ..._buildTypes(),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildDecorations(double itemHeight) {
    return [
      Positioned(
        bottom: -itemHeight * 0.136,
        right: -itemHeight * 0.034,
        child: Image.asset(
          "assets/icon.png",
          width: itemHeight * 0.754,
          height: itemHeight * 0.754,
          color: Colors.white.withOpacity(0.14),
        ),
      ),
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
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            color: Colors.white.withOpacity(0.4),
          ),
        ),
      ),
    ];
  }

  List<Widget> _buildTypes() {
    final widgetTypes = widget.temtem.types
        .map((type) => Hero(
              tag: widget.temtem.name + type,
              child: TileType(type),
            ))
        .expand((item) => [item, SizedBox(height: 6)]);
    return widgetTypes.toList();
  }

  Widget _buildImage(double itemHeight) {
    return CachedNetworkImage(
      imageUrl: widget.temtem.wikiPortraitUrlLarge,
      placeholder: (context, url) => Image.asset("assets/temtem_unknown.png"),
      errorWidget: (context, url, error) => Icon(Icons.error),
      fit: BoxFit.contain,
      width: itemHeight * 0.6,
      height: itemHeight * 0.6,
      alignment: Alignment.bottomRight,
    );
  }
}
