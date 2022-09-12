import 'package:flutter/material.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/text_styles.dart';
import 'package:temopedia/styles/theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class SynergyInfo extends StatelessWidget {
  final String synergy;
  final List<SynergyEffect> synergyEffects;

  const SynergyInfo(this.synergy, this.synergyEffects);

  TemTemApiType? _getType() {
    for (var elem in globals.types) {
      if (elem.name.toLowerCase() == synergy.toLowerCase()) return elem;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final synergyType = _getType();

    if (synergyType == null) return Container();

    return Container(
      decoration: BoxDecoration(
        color: MyColors.lightBackground,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Synergy:", style: TextStyles.lightText),
              const SizedBox(width: 10),
              TypeChip(synergyType.name),
            ],
          ),
          ...synergyEffects
              .map(
                (synergy) => Text(synergy.effect, style: TextStyles.lightText),
              )
              .toList(),
        ],
      ),
    );
  }
}
