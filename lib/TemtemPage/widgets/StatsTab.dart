import 'package:flutter/material.dart';
import 'package:temopedia/Models/Stats.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Progress.dart';

class StatsTab extends StatelessWidget {
  final Stats stats;

  StatsTab(this.stats);

  List<StatWidget> _buildStats() {
    List<StatWidget> _stats = [];
    _stats.add(StatWidget(
      label: "Hp",
      progress: stats.hp.toDouble(),
      value: stats.hp.toString(),
    ));
    _stats.add(StatWidget(
      label: "Sta",
      progress: stats.sta.toDouble(),
      value: stats.sta.toString(),
    ));
    _stats.add(StatWidget(
      label: "Spd",
      progress: stats.spd.toDouble(),
      value: stats.spd.toString(),
    ));
    _stats.add(StatWidget(
      label: "Atk",
      progress: stats.atk.toDouble(),
      value: stats.atk.toString(),
    ));
    _stats.add(StatWidget(
      label: "Def",
      progress: stats.def.toDouble(),
      value: stats.def.toString(),
    ));
    _stats.add(StatWidget(
      label: "SpAtk",
      progress: stats.spatk.toDouble(),
      value: stats.spatk.toString(),
    ));
    _stats.add(StatWidget(
      label: "SpDef",
      progress: stats.spdef.toDouble(),
      value: stats.spdef.toString(),
    ));
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Statistics",
            style: TextStyle(
              color: MyColors.lightOrange,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              height: 0.8,
            ),
          ),
          SizedBox(height: 28),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              ..._buildStats().expand((stat) => [stat, SizedBox(height: 14)]),
            ],
          )
        ],
      ),
    );
  }
}

class StatWidget extends StatelessWidget {
  final String label;
  final double progress;
  final String value;

  StatWidget({
    @required this.label,
    @required double progress,
    @required this.value,
  }) : this.progress = progress * 1 / 100;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Text(
            label,
            style: TextStyle(color: MyColors.lightOrange),
          ),
        ),
        Expanded(
            flex: 1,
            child: Text(value, style: TextStyle(color: MyColors.lightOrange))),
        Expanded(
          flex: 5,
          child: ProgressBar(
            progress: progress,
            color: progress < 0.5
                ? Colors.red
                : progress < 0.7 ? Colors.orange : Colors.green,
          ),
        )
      ],
    );
  }
}
