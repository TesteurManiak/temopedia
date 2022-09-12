import 'package:flutter/material.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../styles/text_styles.dart';
import '../../styles/theme.dart';
import '../../utils/globals.dart' as globals;
import 'TargetChip.dart';
import 'TypeChip.dart';
import 'class_chip.dart';
import 'hold_chip.dart';
import 'priority_chip.dart';
import 'stamina_chip.dart';
import 'synergy_info.dart';

class TechniqueContent extends StatelessWidget {
  final TemTemApiTechnique tech;

  const TechniqueContent(this.tech, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 7,
          children: <Widget>[
            TypeChip(tech.type),
            ClassChip(tech.classTouch, tech.damage),
            StaminaChip(tech.staminaCost),
            PriorityChip(tech.priority),
            HoldChip(tech.hold),
            TargetChip(tech.targets),
          ],
        ),
        SynergyInfo(tech.synergy, tech.synergyEffects),
        const SizedBox(height: 8),
        Text(tech.description, style: TextStyles.lightText),
      ],
    );
  }
}

class TechniqueList extends StatelessWidget {
  final List<Technique> techniques;

  const TechniqueList(this.techniques, {super.key});

  TemTemApiTechnique? _getTechnique(String name) {
    for (final item in globals.techiques) {
      if (item.name.toLowerCase() == name.toLowerCase()) {
        return item;
      }
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> allTechniques = [];
    for (var item in techniques) {
      allTechniques.add(
        Container(
          margin: const EdgeInsets.only(top: 6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: MyColors.lightBackground,
          ),
          child: ListTile(
            title: Text(item.name, style: TextStyles.lightText),
            trailing: Text(
              item.source == "Levelling"
                  ? "${item.source} : ${item.levels}"
                  : item.source,
              style: TextStyles.lightText,
            ),
            onTap: () {
              final tech = _getTechnique(item.name);
              if (tech == null) return;
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: MyColors.background,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                  title: Text(tech.name, style: TextStyles.lightText),
                  content: TechniqueContent(tech),
                  actions: <Widget>[
                    TextButton(
                      child: Text("Close", style: TextStyles.lightText),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      );
    }
    return allTechniques.isEmpty
        ? Container()
        : Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: MyColors.background,
                borderRadius: BorderRadius.circular(21.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: allTechniques,
              ),
            ),
          );
  }
}
