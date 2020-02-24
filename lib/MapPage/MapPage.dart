import 'package:flutter/material.dart';
import 'package:temopedia/MapPage/widgets/DescriptionCard.dart';
import 'package:temopedia/MapPage/widgets/TemtemAreaList.dart';
import 'package:temopedia/MapPage/widgets/TemtemLocation.dart';
import 'package:temopedia/MapPage/widgets/TypeFoundCard.dart';
import 'package:temopedia/Models/Location.dart';
import 'package:temopedia/Models/TemLocation.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/TemtemPage/widgets/TriviaCard.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class MapPage extends StatefulWidget {
  final TemLocation location;
  final Temtem temtem;

  MapPage(this.location, this.temtem);

  @override
  State<StatefulWidget> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  final _textStyle = TextStyle(color: MyColors.lightFont);

  Location _location;

  Location _getLocation() {
    for (Location location in globals.locations) {
      if (location.name.toLowerCase() == widget.location.island.toLowerCase())
        return location;
    }
    return null;
  }

  @override
  void initState() {
    super.initState();
    _location = _getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.location.island, style: _textStyle),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: MyColors.background,
      body: SafeArea(
        child: _location == null
            ? Container()
            : SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(21),
                    color: MyColors.lightBackground,
                  ),
                  child: Column(
                    children: <Widget>[
                      TemtemLocation(widget.temtem, widget.location),
                      SizedBox(height: 12),
                      DescriptionCard(_location.description),
                      SizedBox(height: 12),
                      TypeFoundCard(_location.temtemTypes, widget.temtem),
                      SizedBox(height: 12),
                      TemtemAreaList(_location.temtem, _location),
                      SizedBox(height: 12),
                      TriviaCard(_location.trivia),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
