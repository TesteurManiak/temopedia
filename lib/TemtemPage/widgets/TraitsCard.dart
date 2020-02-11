import 'package:flutter/material.dart';
import 'package:temopedia/Models/Traits.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TraitsCard extends StatelessWidget {
  final List<String> traits;
  final TextStyle textStyle = TextStyle(color: MyColors.lightFont);

  TraitsCard(this.traits);

  Traits _getTrait(String trait) {
    for (Traits elem in globals.traits)
      if (trait.toLowerCase() == elem.name.toLowerCase()) return elem;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = [];
    traits.forEach((item) => _children.add(
          Container(
            margin: const EdgeInsets.only(top: 6.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: MyColors.lightBackground),
            child: ListTile(
              onTap: () {
                var _trait = _getTrait(item);
                if (_trait == null) return null;
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    backgroundColor: MyColors.background,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(21.0)),
                    title: Text(_trait.name, style: textStyle),
                    content: Text(_trait.description, style: textStyle),
                    actions: <Widget>[
                      FlatButton(
                          child: Text("Close", style: textStyle),
                          onPressed: () => Navigator.pop(context))
                    ],
                  ),
                );
              },
              title: Text(item, style: textStyle),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: MyColors.lightFont),
            ),
          ),
        ));
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.0),
          color: MyColors.background),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: _children,
      ),
    );
  }
}
