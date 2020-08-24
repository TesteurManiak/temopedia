import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class TraitsCard extends StatelessWidget {
  final List<String> traits;

  TraitsCard(this.traits);

  TemTemApiTraits _getTrait(String trait) {
    for (final elem in globals.traits)
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
                        borderRadius: BorderRadius.circular(21)),
                    title: Text(_trait.name, style: TextStyles.lightText),
                    content:
                        Text(_trait.description, style: TextStyles.lightText),
                    actions: <Widget>[
                      FlatButton(
                          child: Text("Close", style: TextStyles.lightText),
                          onPressed: () => Navigator.pop(context))
                    ],
                  ),
                );
              },
              title: Text(item, style: TextStyles.lightText),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: MyColors.lightFont),
            ),
          ),
        ));

    return _children.isEmpty
        ? Container()
        : Padding(
            padding: EdgeInsets.only(bottom: 12),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(21.0),
                  color: MyColors.background),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _children,
              ),
            ),
          );
  }
}
