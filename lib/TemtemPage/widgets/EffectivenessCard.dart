import 'package:flutter/material.dart';
import 'package:temopedia/Models/Weakness.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class EffectivenessCard extends StatefulWidget {
  final List<String> types;

  EffectivenessCard(this.types);

  @override
  State<StatefulWidget> createState() => _EffectivenessCardState();
}

class _EffectivenessCardState extends State<EffectivenessCard> {
  List<Weakness> _weaknesses = [];

  _buildWeakness(String label, double value) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(flex: 1, child: TypeChip(label)),
        Expanded(
          flex: 2,
          child: Text(
            "x $value",
            style: TextStyle(
              color: value < 1.5
                  ? value < 1 ? Colors.green : Colors.white
                  : Colors.red,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
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
    return _weaknesses.isEmpty
        ? Container()
        : Container(
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21),
              color: MyColors.background,
            ),
            child: Column(
              children: List<Widget>.generate(
                  globals.weaknesses.length,
                  (index) => _buildWeakness(
                      globals.weaknesses[index].name,
                      widget.types
                          .map((type) =>
                              globals.weaknesses[index].weaknesses[type])
                          .toList()
                          .reduce((a, b) => a * b))),
            ),
          );
  }
}
