import 'package:flutter/material.dart';
import 'package:temopedia/Models/Technique.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/JsonHelper.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TechniqueList extends StatelessWidget {
  final List<Map<String, dynamic>> techniques;
  final textStyle = TextStyle(color: MyColors.lightOrange);

  TechniqueList(this.techniques);

  Technique _getTechnique(String name) {
    for (var item in globals.techiques)
      if (item.name.toLowerCase() == name.toLowerCase()) return item;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _allTechniques = [
      Text(
        "Techniques",
        style: TextStyle(
          color: MyColors.lightOrange,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          height: 0.8,
        ),
      ),
      SizedBox(height: 28),
    ];
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
                    content: Text(_tech.description, style: textStyle),
                    actions: <Widget>[
                      FlatButton(
                          child: Text("Close"),
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
