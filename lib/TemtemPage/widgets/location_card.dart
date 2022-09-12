import 'package:flutter/material.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../map/map_args.dart';
import '../../map/map_page_args.dart';
import '../../styles/text_styles.dart';
import '../../styles/theme.dart';

class LocationCard extends StatelessWidget {
  final TemTemApiTem temtem;

  const LocationCard(this.temtem, {super.key});

  @override
  Widget build(BuildContext context) {
    return temtem.locations?.isEmpty ?? true
        ? const SizedBox.shrink()
        : Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: MyColors.background,
                borderRadius: BorderRadius.circular(21),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List<Widget>.generate(
                  temtem.locations?.length ?? 0,
                  (index) {
                    final location = temtem.locations![index];
                    return Container(
                      margin: const EdgeInsets.only(top: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: MyColors.lightBackground,
                      ),
                      child: ListTile(
                        onTap: () => Navigator.pushNamed(
                          context,
                          MapPageArgs.routeName,
                          arguments:
                              MapArgs(location: location, temtem: temtem),
                        ),
                        title: Text(
                          location.location,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.lightText,
                        ),
                        subtitle: Text(
                          location.island,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.lightText,
                        ),
                        trailing: Text(
                          location.frequency,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyles.lightText,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
  }
}
