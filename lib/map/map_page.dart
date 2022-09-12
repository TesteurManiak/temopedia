import 'package:flutter/material.dart';
import 'package:temopedia/TemtemPage/widgets/TriviaCard.dart';
import 'package:temopedia/map/widgets/DescriptionCard.dart';
import 'package:temopedia/map/widgets/TemtemLocation.dart';
import 'package:temopedia/map/widgets/TypeFoundCard.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import 'widgets/TemtemAreaList.dart';

class MapPage extends StatefulWidget {
  final TemLocation location;
  final TemTemApiTem temtem;

  const MapPage(this.location, this.temtem, {super.key});

  @override
  State<StatefulWidget> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  late final _location = _getLocation();

  TemTemApiLocation? _getLocation() {
    for (final location in globals.locations) {
      if (location.name.toLowerCase() == widget.location.island.toLowerCase()) {
        return location;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final imageWikiThumbnail = _location?.imageWikiThumbnail;
    final location = _location;

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.location.island, style: TextStyles.lightText),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      backgroundColor: MyColors.background,
      body: SafeArea(
        child: _location == null
            ? Container()
            : SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: MyColors.lightBackground,
                  ),
                  child: Column(
                    children: <Widget>[
                      if (imageWikiThumbnail != null)
                        TemtemLocation(
                            widget.temtem, widget.location, imageWikiThumbnail),
                      if (location != null) ...[
                        const SizedBox(height: 12),
                        DescriptionCard(location.description)
                      ],
                      if (location != null) ...[
                        const SizedBox(height: 12),
                        TypeFoundCard(location.temtemTypes, widget.temtem),
                      ],
                      if (location != null) ...[
                        const SizedBox(height: 12),
                        TemtemAreaList(location.temtem, location)
                      ],
                      if (location != null) ...[
                        const SizedBox(height: 12),
                        TriviaCard(location.trivia),
                      ],
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
