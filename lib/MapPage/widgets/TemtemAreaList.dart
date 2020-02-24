import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/Models/Location.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TemtemAreaList extends StatelessWidget {
  final List<String> temtems;
  final Location location;

  final _textStyle = TextStyle(color: MyColors.lightFont);

  TemtemAreaList(this.temtems, this.location);

  Temtem _getTemtem(String name) {
    for (var temtem in globals.temtems) {
      if (name.toLowerCase() == temtem.name.toLowerCase()) return temtem;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return temtems.isEmpty
        ? Container()
        : Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: MyColors.background,
            ),
            child: Column(
              children: <Widget>[
                ...temtems.map((temtem) {
                  Temtem _temtem = _getTemtem(temtem);
                  if (_temtem == null) return Container();
                  return ListTile(
                    title: Text(_temtem.name, style: _textStyle),
                    leading: CachedNetworkImage(
                        imageUrl: _temtem.wikiPortraitUrlLarge),
                  );
                }).toList()
              ],
            ),
          );
  }
}
