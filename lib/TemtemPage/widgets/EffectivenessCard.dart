import 'package:flutter/material.dart';
import 'package:temopedia/Models/Weakness.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class EffectivenessCard extends StatefulWidget {
  final List<String> types;

  EffectivenessCard(this.types);

  @override
  State<StatefulWidget> createState() => _EffectivenessCardState();
}

class _EffectivenessCardState extends State<EffectivenessCard> {
  final _textStyle = TextStyle(color: MyColors.lightFont);

  List<Weakness> _weaknesses = [];

  _buildWeakness(String label, double value) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(flex: 2, child: Text(label, style: _textStyle)),
        Expanded(flex: 1, child: Text("$value", style: _textStyle)),
      ],
    );
  }

  _getWeaknesses() {
    globals.weaknesses.forEach((weakness) {
      if (widget.types.contains(weakness.name)) _weaknesses.add(weakness);
    });
  }

  @override
  void initState() {
    super.initState();
    _getWeaknesses();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: MyColors.background,
      ),
      child: Column(
        children: List<Widget>.generate(globals.types.length,
            (index) => _buildWeakness(globals.types[index].name, null)),
      ),
    );
  }
}
