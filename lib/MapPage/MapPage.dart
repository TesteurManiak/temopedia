import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:temopedia/Models/Location.dart';
import 'package:temopedia/styles/Theme.dart';

class MapPage extends StatefulWidget {
  final Location location;

  MapPage(this.location);

  @override
  State<StatefulWidget> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  String _getPosition() {
    switch (widget.location.location.toLowerCase()) {
      case "corrupted badlands":
      case "xolot reservoir":
        return 'assets/tucma.jpg';
      case "mines of mictlan":
        return "assets/tucma_subsurface.jpg";
      case "the gifted bridges":
      case "prasine coast":
      case "thalassian cliffs":
        return 'assets/deniz.jpg';
      case "windward fort":
        return 'assets/windward_fort.jpg';
      case "aguamarina caves":
        return 'assets/aguamarina_caves.jpg';
      default:
        return 'assets/unknown.png';
    }
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
        child: Container(
          color: MyColors.background,
          child: PhotoView.customChild(
            child: Container(
              color: MyColors.background,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Image.asset(_getPosition()),
                ],
              ),
            ),
            initialScale: 1.0,
          ),
        ),
      ),
    );
  }
}
