import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class TraitsCard extends StatelessWidget {
  final List<String> traits;

  TraitsCard(this.traits);

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = [
      Text("Traits", style: TextStyle(color: MyColors.lightOrange))
    ];
    traits.forEach((item) => _children.add(
          Container(
            margin: const EdgeInsets.only(top: 6.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: MyColors.lightBackground),
            child: ListTile(
              title: Text(
                item,
                style: TextStyle(color: MyColors.lightOrange),
              ),
              trailing:
                  Icon(Icons.arrow_forward_ios, color: MyColors.lightOrange),
            ),
          ),
        ));
    return Container(
      padding:
          const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0, bottom: 12.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.0),
          color: MyColors.background),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _children,
      ),
    );
  }
}
