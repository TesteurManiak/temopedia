import 'package:flutter/material.dart';
import 'package:temopedia/Models/Location.dart';
import 'package:temopedia/styles/Theme.dart';

class LocationCard extends StatelessWidget {
  final List<Location> locations;
  final textStyle = TextStyle(color: MyColors.lightFont);

  LocationCard(this.locations);

  @override
  Widget build(BuildContext context) {
    List<Widget> _locations = [];
    locations.forEach(
      (item) => _locations.add(ListTile(
        title: Text(item.location, style: textStyle),
        subtitle: Text(item.island, style: textStyle),
        trailing: Text(item.frequency,
            overflow: TextOverflow.ellipsis, style: textStyle),
      )),
    );
    return Container(
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
