import 'package:flutter/material.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../styles/text_styles.dart';
import '../../styles/theme.dart';
import '../../utils/globals.dart' as globals;

class TraitsCard extends StatelessWidget {
  final List<Trait> traits;

  const TraitsCard(this.traits, {super.key});

  TemTemApiTraits? _getTrait(Trait trait) {
    for (final elem in globals.traits) {
      if (trait.name.toLowerCase() == elem.name.toLowerCase()) return elem;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> children = [];
    for (var item in traits) {
      children.add(
        Container(
          margin: const EdgeInsets.only(top: 6.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: MyColors.lightBackground,
          ),
          child: ListTile(
            onTap: () {
              var trait = _getTrait(item);
              if (trait == null) return;
              showDialog(
                context: context,
                builder: (context) => AlertDialog(
                  backgroundColor: MyColors.background,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(21),
                  ),
                  title: Text(trait.name, style: TextStyles.lightText),
                  content: Text(trait.description, style: TextStyles.lightText),
                  actions: <Widget>[
                    TextButton(
                      child: Text("Close", style: TextStyles.lightText),
                      onPressed: () => Navigator.pop(context),
                    )
                  ],
                ),
              );
            },
            title: Text(item.name, style: TextStyles.lightText),
            trailing:
                const Icon(Icons.arrow_forward_ios, color: MyColors.lightFont),
          ),
        ),
      );
    }

    return children.isEmpty
        ? Container()
        : Padding(
            padding: const EdgeInsets.only(bottom: 12),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(21.0),
                color: MyColors.background,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
          );
  }
}
