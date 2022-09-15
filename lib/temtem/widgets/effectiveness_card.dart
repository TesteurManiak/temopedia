import 'package:flutter/material.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../Models/weakness.dart';
import '../../styles/text_styles.dart';
import '../../styles/theme.dart';
import '../../utils/globals.dart' as globals;
import 'type_chip.dart';

class EffectivenessCard extends StatefulWidget {
  final List<Type> types;

  const EffectivenessCard(this.types, {super.key});

  @override
  State<StatefulWidget> createState() => _EffectivenessCardState();
}

class _EffectivenessCardState extends State<EffectivenessCard> {
  final List<Weakness> _weaknesses = [];

  Widget _buildWeakness(String label, double? value) {
    final modifier = value ?? 0.0;
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(flex: 1, child: TypeChip(label)),
        Expanded(
          flex: 2,
          child: Text(
            "x $value",
            style: modifier > 1
                ? TextStyles.weak
                : modifier < 1
                    ? TextStyles.resist
                    : TextStyles.normal,
          ),
        ),
      ],
    );
  }

  void _getWeaknesses() {
    for (var weakness in globals.weaknesses) {
      if (widget.types.map((e) => e.name).contains(weakness.name)) {
        _weaknesses.add(weakness);
      }
    }
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
            padding: const EdgeInsets.symmetric(vertical: 16),
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
                      .map(
                        (type) =>
                            globals.weaknesses[index].weaknesses[type.name],
                      )
                      .toList()
                      .reduce((a, b) => (a ?? 0.0) * (b ?? 0.0)),
                ),
              ),
            ),
          );
  }
}
