import 'package:flutter/material.dart';
import 'package:temopedia/Models/SynergyEffects.dart';
import 'package:temopedia/Models/Type.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class SynergyInfo extends StatelessWidget {
  final String synergy;
  final List<SynergyEffects> synergyEffects;

  SynergyInfo(this.synergy, this.synergyEffects);

  TemType _getType() {
    for (var elem in globals.types)
      if (elem.name.toLowerCase() == synergy.toLowerCase()) return elem;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    TemType synergyType = _getType();

    if (synergyType == null) return Container();

    return Container(
      decoration: BoxDecoration(
          color: MyColors.lightBackground,
          borderRadius: BorderRadius.circular(30)),
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Synergy:", style: TextStyles.lightText),
              SizedBox(width: 10),
              TypeChip(synergyType.name),
            ],
          ),
          ...synergyEffects
              .map((synergy) => Text(synergy.effect ?? "Error Synergy Effect",
                  style: TextStyles.lightText))
              .toList(),
        ],
      ),
    );
  }
}
