import 'package:flutter/material.dart';
import 'package:temopedia/MapPage/MapArgs.dart';
import 'package:temopedia/MapPage/MapPageArgs.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class LocationCard extends StatelessWidget {
  final TemTemApiTem temtem;

  LocationCard(this.temtem);

  @override
  Widget build(BuildContext context) {
    return temtem.locations?.isEmpty ?? true
        ? SizedBox.shrink()
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
                      onTap: () => Navigator.pushNamed(
                          context, MapPageArgs.routeName,
                          arguments: MapArgs(
                              location: temtem.locations[index],
                              temtem: temtem)),
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
