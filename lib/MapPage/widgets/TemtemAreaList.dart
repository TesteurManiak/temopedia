import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class TemtemAreaList extends StatelessWidget {
  final List<String> temtems;
  final TemTemApiLocation location;

  TemtemAreaList(this.temtems, this.location);

  TemTemApiTem? _getTemtem(String name) {
    for (var temtem in globals.temtems) {
      if (name.toLowerCase() == temtem.name.toLowerCase()) return temtem;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return temtems.isEmpty
        ? SizedBox.shrink()
        : Container(
            padding: EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: MyColors.background,
            ),
            child: Column(
              children: <Widget>[
                ...temtems.map((temtem) {
                  final _temtem = _getTemtem(temtem);
                  if (_temtem == null) return SizedBox.shrink();
                  return ListTile(
                    title: Text(_temtem.name, style: TextStyles.lightText),
                    leading: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                          _temtem.wikiPortraitUrlLarge),
                      backgroundColor: MyColors.portraitBack,
                    ),
                  );
                }).toList()
              ],
            ),
          );
  }
}
