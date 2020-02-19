import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:temopedia/MapPage/widgets/Marker.dart';
import 'package:temopedia/Models/Location.dart';
import 'package:temopedia/Models/MapData.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class MapPage extends StatefulWidget {
  final Location location;
  final Temtem temtem;

  MapPage(this.location, this.temtem);

  @override
  State<StatefulWidget> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final double _markerSize = 20;
  final double _borderWidth = 2;

  MapData _map;

  MapData _getMapByName(String name) {
    for (var elem in globals.maps) if (name == elem.name) return elem;
    return null;
  }

  MapData _getMap() {
    if (widget.location.location == "Windward Fort")
      return _getMapByName(widget.location.location);
    else if (widget.location.location == "Aguamarina Caves")
      return _getMapByName(widget.location.location);
    else if (widget.location.location == "The Canopath")
      return _getMapByName("Superior Omninesia");
    else if (widget.location.location == "The Flywalk")
      return _getMapByName("Citerior Omninesia");
    else if (widget.location.location == "Giant Banyan")
      return _getMapByName(widget.location.location);
    else if (widget.location.location == "The Glassyway" ||
        widget.location.location == "The Hangroad")
      return _getMapByName("Ulterior Omninesia");
    else if (widget.location.location == "Anak Volcano")
      return _getMapByName(widget.location.location);
    else if (widget.location.location == "Mines of Mictlan")
      return _getMapByName(widget.location.location);
    else
      return _getMapByName(widget.location.island);
  }

  @override
  void initState() {
    super.initState();
    _map = _getMap();
  }

  double _calcTop(double value) => value + _markerSize * 2;
  double _calcLeft(double value) => value + _markerSize / 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      appBar: AppBar(
        backgroundColor: MyColors.background,
        title: Text(widget.location.location),
      ),
      body: SafeArea(
        child: _map != null
            ? LayoutBuilder(
                builder: (context, constraints) {
                  double prop = constraints.maxHeight / _map.maxHeight;
                  print("${constraints.maxHeight}");
                  print("$prop");
                  return Container(
                    color: MyColors.background,
                    child: PhotoView.customChild(
                      child: Container(
                        color: MyColors.background,
                        child: Stack(
                          children: <Widget>[
                            CachedNetworkImage(
                              imageUrl: _map.url,
                              placeholder: (context, url) =>
                                  Center(child: CircularProgressIndicator()),
                            ),
                          ],
                        ),
                      ),
                      initialScale: 1.0,
                    ),
                  );
                },
              )
            : Container(),
      ),
    );
  }
}
