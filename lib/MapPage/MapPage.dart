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
  MapData _map;

  MapData _getMap() {
    for (var elem in globals.maps) {
      if (elem.name.toLowerCase() == widget.location.island.toLowerCase())
        return elem;
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    _map = _getMap();
  }

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
                  double prop =
                      constraints.maxHeight / _map.maxHeight; //map maxheight
                  return Container(
                    color: MyColors.background,
                    child: PhotoView.customChild(
                      child: Container(
                        color: MyColors.background,
                        child: Stack(
                          alignment: Alignment.center,
                          children: <Widget>[
                            CachedNetworkImage(
                              imageUrl: _map.url,
                              placeholder: (context, url) =>
                                  Center(child: CircularProgressIndicator()),
                            ),
                            ..._map.points.map((item) {
                              if (!item.temtemsNum
                                  .contains(widget.temtem.number))
                                return Container();
                              return Positioned(
                                child: Marker(),
                                top: item.top * prop,
                                left: item.left * prop,
                              );
                            }).toList(),
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
