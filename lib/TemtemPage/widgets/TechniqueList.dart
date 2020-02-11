import 'package:flutter/material.dart';
import 'package:temopedia/Models/Technique.dart';
import 'package:temopedia/TemtemPage/widgets/ClassChip.dart';
import 'package:temopedia/TemtemPage/widgets/HoldChip.dart';
import 'package:temopedia/TemtemPage/widgets/PriorityChip.dart';
import 'package:temopedia/TemtemPage/widgets/StaminaChip.dart';
import 'package:temopedia/TemtemPage/widgets/SynergyInfo.dart';
import 'package:temopedia/TemtemPage/widgets/TargetChip.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/JsonHelper.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TechniqueContent extends StatelessWidget {
  final Technique tech;
  final textStyle = TextStyle(color: MyColors.lightFont);

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
        SynergyInfo(tech.synergy, tech.synergyEffect),
        SizedBox(height: 8),
        Text(tech.description, style: textStyle),
      ],
    );
  }
}

class TechniqueList extends StatelessWidget {
  final List<Map<String, dynamic>> techniques;
  final textStyle = TextStyle(color: MyColors.lightFont);

  TechniqueList(this.techniques);

  Technique _getTechnique(String name) {
    for (var item in globals.techiques)
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
              title: Text(item[JsonHelper.name], style: textStyle),
              trailing: Text(item[JsonHelper.source], style: textStyle),
              onTap: () {
                Technique _tech = _getTechnique(item[JsonHelper.name]);
                if (_tech == null) return null;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: MyColors.background,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21.0)),
                    title: Text(_tech.name, style: textStyle),
                    content: TechniqueContent(_tech),
                    actions: <Widget>[
                      FlatButton(
                          child: Text("Close", style: textStyle),
                          onPressed: () => Navigator.pop(context))
                    ],
                  ),
                );
              },
            ),
          ),
        ));
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: MyColors.background,
        borderRadius: BorderRadius.circular(21.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _allTechniques,
      ),
    );
  }
}
