import 'package:flutter/material.dart';
import 'package:temopedia/Models/Stats.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Progress.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class StatsTab extends StatelessWidget {
  final Stats stats;
  final darkStyle =
      TextStyle(color: MyColors.darkFont, fontWeight: FontWeight.bold);

  StatsTab(this.stats);

  Widget _totalStat() {
    return Row(
      children: <Widget>[
        Expanded(flex: 2, child: Text("Total", style: darkStyle)),
        Expanded(flex: 1, child: Text("${stats.total}", style: darkStyle)),
        Expanded(child: Container(), flex: 5),
      ],
    );
  }

  List<Widget> _buildStats() {
    List<Widget> _stats = [];
    _stats.add(StatWidget(
      label: "Hp",
      progress: stats.hp.toDouble(),
      value: stats.hp.toString(),
      maxValue: globals.maxStats['hp'],
    ));
    _stats.add(StatWidget(
      label: "Sta",
      progress: stats.sta.toDouble(),
      value: stats.sta.toString(),
      maxValue: globals.maxStats['sta'],
    ));
    _stats.add(StatWidget(
      label: "Spd",
      progress: stats.spd.toDouble(),
      value: stats.spd.toString(),
      maxValue: globals.maxStats['spd'],
    ));
    _stats.add(StatWidget(
      label: "Atk",
      progress: stats.atk.toDouble(),
      value: stats.atk.toString(),
      maxValue: globals.maxStats['atk'],
    ));
    _stats.add(StatWidget(
      label: "Def",
      progress: stats.def.toDouble(),
      value: stats.def.toString(),
      maxValue: globals.maxStats['def'],
    ));
    _stats.add(StatWidget(
      label: "SpAtk",
      progress: stats.spatk.toDouble(),
      value: stats.spatk.toString(),
      maxValue: globals.maxStats['spatk'],
    ));
    _stats.add(StatWidget(
      label: "SpDef",
      progress: stats.spdef.toDouble(),
      value: stats.spdef.toString(),
      maxValue: globals.maxStats['spdef'],
    ));
    _stats.add(_totalStat());
    return _stats;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
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
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: TextStyle(color: MyColors.lightFont),
          ),
        ),
        Expanded(
            flex: 1,
            child: Text(value, style: TextStyle(color: MyColors.lightFont))),
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
    );
  }
}
