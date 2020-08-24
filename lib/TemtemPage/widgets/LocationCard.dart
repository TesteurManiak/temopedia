import 'package:flutter/material.dart';
import 'package:temopedia/MapPage/MapPage.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';

class LocationCard extends StatelessWidget {
  final Temtem temtem;

  LocationCard(this.temtem);

  @override
  Widget build(BuildContext context) {
    return temtem.locations.isEmpty
        ? Container()
        : Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: MyColors.background,
                borderRadius: BorderRadius.circular(21),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List<Widget>.generate(
                  temtem.locations.length,
                  (index) => Container(
                    margin: EdgeInsets.only(top: 6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: MyColors.lightBackground),
                    child: ListTile(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              MapPage(temtem.locations[index], temtem))),
                      title: Text(temtem.locations[index].location,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.lightText),
                      subtitle: Text(temtem.locations[index].island,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.lightText),
                      trailing: Text(temtem.locations[index].frequency,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.lightText),
                    ),
                  ),
                ),
              ),
            ),
          );
  }
}
