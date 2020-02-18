import 'package:flutter/material.dart';
import 'package:temopedia/MapPage/MapPage.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/styles/Theme.dart';

class LocationCard extends StatelessWidget {
  final Temtem temtem;
  final textStyle = TextStyle(color: MyColors.lightFont);

  LocationCard(this.temtem);

  @override
  Widget build(BuildContext context) {
    List<Widget> _locations = [];
    temtem.locations.forEach(
      (item) => _locations.add(ListTile(
        onTap: () => Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => MapPage(item, temtem))),
        title: Text(item.location, style: textStyle),
        subtitle: Text(item.island, style: textStyle),
        trailing: Text(item.frequency,
            overflow: TextOverflow.ellipsis, style: textStyle),
      )),
    );

    return _locations.isEmpty
        ? Container()
        : Container(
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: MyColors.background,
              borderRadius: BorderRadius.circular(21.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: _locations,
            ),
          );
  }
}
