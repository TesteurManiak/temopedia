import 'package:flutter/material.dart';

import '../../extensions/extensions.dart' show WidgetModifier;
import '../../styles/text_styles.dart';
import '../../styles/theme.dart';
import '../../utils/globals.dart' as globals;
import '../../utils/progress_bar.dart';

class StatsTab extends StatelessWidget {
  final int total;
  final int hp;
  final int sta;
  final int spd;
  final int atk;
  final int def;
  final int spatk;
  final int spdef;

  const StatsTab({
    super.key,
    required this.total,
    required this.hp,
    required this.sta,
    required this.spd,
    required this.atk,
    required this.def,
    required this.spatk,
    required this.spdef,
  });

  Widget _totalStat() {
    return Row(
      children: <Widget>[
        Expanded(flex: 2, child: Text("Total", style: TextStyles.darkBold)),
        Expanded(flex: 1, child: Text("$total", style: TextStyles.darkBold)),
        Expanded(flex: 5, child: Container()),
      ],
    );
  }

  List<Widget> _buildStats() {
    List<Widget> stats = [];
    stats.add(
      StatWidget(
        label: "Hp",
        progress: hp.toDouble(),
        value: hp.toString(),
        maxValue: globals.maxStats['hp']!,
      ),
    );
    stats.add(
      StatWidget(
        label: "Sta",
        progress: sta.toDouble(),
        value: sta.toString(),
        maxValue: globals.maxStats['sta']!,
      ),
    );
    stats.add(
      StatWidget(
        label: "Spd",
        progress: spd.toDouble(),
        value: spd.toString(),
        maxValue: globals.maxStats['spd']!,
      ),
    );
    stats.add(
      StatWidget(
        label: "Atk",
        progress: atk.toDouble(),
        value: atk.toString(),
        maxValue: globals.maxStats['atk']!,
      ),
    );
    stats.add(
      StatWidget(
        label: "Def",
        progress: def.toDouble(),
        value: def.toString(),
        maxValue: globals.maxStats['def']!,
      ),
    );
    stats.add(
      StatWidget(
        label: "SpAtk",
        progress: spatk.toDouble(),
        value: spatk.toString(),
        maxValue: globals.maxStats['spatk']!,
      ),
    );
    stats.add(
      StatWidget(
        label: "SpDef",
        progress: spdef.toDouble(),
        value: spdef.toString(),
        maxValue: globals.maxStats['spdef']!,
      ),
    );
    stats.add(_totalStat());
    return stats;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.0),
          color: MyColors.background,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            ..._buildStats()
                .expand((stat) => [stat, const SizedBox(height: 14)]),
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

  const StatWidget({
    super.key,
    required this.label,
    required double progress,
    required this.value,
    required this.maxValue,
  }) : progress = progress / maxValue;

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
                : progress < 0.75
                    ? Colors.orange
                    : Colors.green,
          ),
        )
      ],
    ).padding(const EdgeInsets.only(bottom: 12));
  }
}
