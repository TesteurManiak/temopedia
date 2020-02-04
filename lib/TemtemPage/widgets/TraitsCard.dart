import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class TraitsCard extends StatelessWidget {
  final List<String> traits;

  TraitsCard(this.traits);

  @override
  Widget build(BuildContext context) {
    List<Widget> _children = [
      Text("Trait", style: TextStyle(color: MyColors.lightOrange))
    ];
    traits.forEach((item) => _children.add(
          Container(
            margin: const EdgeInsets.only(top: 6.0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0), color: Colors.white),
            child: ListTile(title: Text(item)),
          ),
        ));
    return Container(
      padding: const EdgeInsets.all(8.0),
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
