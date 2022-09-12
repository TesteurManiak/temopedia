import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/styles/text_styles.dart';
import 'package:temopedia/styles/theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class TemtemAreaList extends StatelessWidget {
  final List<String> temtems;
  final TemTemApiLocation location;

  const TemtemAreaList(this.temtems, this.location, {super.key});

  TemTemApiTem? _getTemtem(String name) {
    for (var temtem in globals.temtems) {
      if (name.toLowerCase() == temtem.name.toLowerCase()) return temtem;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return temtems.isEmpty
        ? const SizedBox.shrink()
        : Container(
            padding: const EdgeInsets.symmetric(vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: MyColors.background,
            ),
            child: Column(
              children: <Widget>[
                ...temtems.map((e) {
                  final temtem = _getTemtem(e);
                  if (temtem == null) return const SizedBox.shrink();
                  return ListTile(
                    title: Text(temtem.name, style: TextStyles.lightText),
                    leading: CircleAvatar(
                      backgroundImage: CachedNetworkImageProvider(
                        temtem.wikiPortraitUrlLarge,
                      ),
                      backgroundColor: MyColors.portraitBack,
                    ),
                  );
                }).toList()
              ],
            ),
          );
  }
}
