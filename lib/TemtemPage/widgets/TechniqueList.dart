import 'package:flutter/material.dart';
import 'package:temopedia/TemtemPage/widgets/ClassChip.dart';
import 'package:temopedia/TemtemPage/widgets/HoldChip.dart';
import 'package:temopedia/TemtemPage/widgets/PriorityChip.dart';
import 'package:temopedia/TemtemPage/widgets/StaminaChip.dart';
import 'package:temopedia/TemtemPage/widgets/SynergyInfo.dart';
import 'package:temopedia/TemtemPage/widgets/TargetChip.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class TechniqueContent extends StatelessWidget {
  final TemTemApiTechnique tech;

  TechniqueContent(this.tech);

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
        SizedBox(height: 8),
        Text(tech.description, style: TextStyles.lightText),
      ],
    );
  }
}

class TechniqueList extends StatelessWidget {
  final List<Technique> techniques;

  TechniqueList(this.techniques);

  TemTemApiTechnique _getTechnique(String name) {
    for (final item in globals.techiques)
      if (item.name.toLowerCase() == name.toLowerCase()) return item;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _allTechniques = [];
    techniques.forEach((item) => _allTechniques.add(
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
                  style: TextStyles.lightText),
              onTap: () {
                final _tech = _getTechnique(item.name);
                if (_tech == null) return null;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: MyColors.background,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21)),
                    title: Text(_tech.name, style: TextStyles.lightText),
                    content: TechniqueContent(_tech),
                    actions: <Widget>[
                      FlatButton(
                          child: Text("Close", style: TextStyles.lightText),
                          onPressed: () => Navigator.pop(context))
                    ],
                  ),
                );
              },
            ),
          ),
        ));
    return _allTechniques.isEmpty
        ? Container()
        : Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: MyColors.background,
                borderRadius: BorderRadius.circular(21.0),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _allTechniques,
              ),
            ),
          );
  }
}
