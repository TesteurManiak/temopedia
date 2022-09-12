import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Progress.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temopedia/extensions/extensions.dart' show WidgetModifier;

class StatsTab extends StatelessWidget {
  final int total;
  final int hp;
  final int sta;
  final int spd;
  final int atk;
  final int def;
  final int spatk;
  final int spdef;

  StatsTab({
    this.total,
    this.hp,
    this.sta,
    this.spd,
    this.atk,
    this.def,
    this.spatk,
    this.spdef,
  });

  Widget _totalStat() {
    return Row(
      children: <Widget>[
        Expanded(flex: 2, child: Text("Total", style: TextStyles.darkBold)),
        Expanded(flex: 1, child: Text("$total", style: TextStyles.darkBold)),
        Expanded(child: Container(), flex: 5),
      ],
    );
  }

  List<Widget> _buildStats() {
    List<Widget> _stats = [];
    _stats.add(StatWidget(
      label: "Hp",
      progress: hp.toDouble(),
      value: hp.toString(),
      maxValue: globals.maxStats['hp'],
    ));
    _stats.add(StatWidget(
      label: "Sta",
      progress: sta.toDouble(),
      value: sta.toString(),
      maxValue: globals.maxStats['sta'],
    ));
    _stats.add(StatWidget(
      label: "Spd",
      progress: spd.toDouble(),
      value: spd.toString(),
      maxValue: globals.maxStats['spd'],
    ));
    _stats.add(StatWidget(
      label: "Atk",
      progress: atk.toDouble(),
      value: atk.toString(),
      maxValue: globals.maxStats['atk'],
    ));
    _stats.add(StatWidget(
      label: "Def",
      progress: def.toDouble(),
      value: def.toString(),
      maxValue: globals.maxStats['def'],
    ));
    _stats.add(StatWidget(
      label: "SpAtk",
      progress: spatk.toDouble(),
      value: spatk.toString(),
      maxValue: globals.maxStats['spatk'],
    ));
    _stats.add(StatWidget(
      label: "SpDef",
      progress: spdef.toDouble(),
      value: spdef.toString(),
      maxValue: globals.maxStats['spdef'],
    ));
    _stats.add(_totalStat());
    return _stats;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21.0),
            color: MyColors.background),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ..._buildStats().expand((stat) => [stat, SizedBox(height: 14)]),
          ],
        ),
      ),
    );
  }
}

class StatWidget extends StatelessWidget {
  final String label;
  final double progress;
  final String value;
  final int maxValue;

  StatWidget({
    @required this.label,
    @required double progress,
    @required this.value,
    @required this.maxValue,
  }) : this.progress = progress / maxValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(flex: 2, child: Text(label, style: TextStyles.lightText)),
        Expanded(flex: 1, child: Text(value, style: TextStyles.lightText)),
        Expanded(
          flex: 5,
          child: ProgressBar(
            progress: progress,
            color: progress < 0.5
                ? Colors.red
                : progress < 0.75 ? Colors.orange : Colors.green,
          ),
        )
      ],
    ).padding(EdgeInsets.only(bottom: 12));
  }
}
