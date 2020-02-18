import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:temopedia/Models/Location.dart';
import 'package:temopedia/Models/MapData.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class MapPage extends StatefulWidget {
  final Location location;

  MapPage(this.location);

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

  Widget _setPoint() {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.red.withOpacity(0.7),
          border: Border.all(
            width: 2,
            color: Colors.white,
          )),
      height: 20,
      width: 20,
    );
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
                            ..._map.points
                                .map((item) => Positioned(
                                      child: _setPoint(),
                                      top: item.top * prop,
                                      left: item.left * prop,
                                    ))
                                .toList(),
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
