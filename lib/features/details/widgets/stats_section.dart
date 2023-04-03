import 'package:flutter/material.dart';

import '../../../core/models/stats.dart';
import '../../../core/widgets/app_text.dart';
import '../../../core/widgets/rounded_progress_bar.dart';
import '../../../core/widgets/separated_column.dart';
import '../../../core/widgets/separated_row.dart';
import 'details_container.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({
    super.key,
    required this.stats,
  });

  final Stats stats;

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: 8);

    return DetailsContainer(
      title: 'Stats',
      child: SeparatedRow(
        separator: const SizedBox(width: 16),
        children: [
          Expanded(
            child: SeparatedColumn(
              separator: separator,
              mainAxisSize: MainAxisSize.min,
              children: [
                _StatLine(label: 'hp', value: stats.hp),
                _StatLine(label: 'spd', value: stats.spd),
                _StatLine(label: 'def', value: stats.def),
                _StatLine(label: 'spdef', value: stats.spdef),
              ],
            ),
          ),
          Expanded(
            child: SeparatedColumn(
              separator: separator,
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                _StatLine(label: 'sta', value: stats.sta),
                _StatLine(label: 'atk', value: stats.atk),
                _StatLine(label: 'spatk', value: stats.spatk),
                _TotalLine(total: stats.total),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _StatLine extends StatelessWidget {
  const _StatLine({
    required this.label,
    required this.value,
  });

  final String label;
  final int value;

  @override
  Widget build(BuildContext context) {
    return SeparatedRow(
      separator: const SizedBox(width: 8),
      children: [
        SizedBox(
          width: 44,
          child: AppText(label.toUpperCase()),
        ),
        Flexible(
          child: RoundedProgressBar(value: value / 100),
        ),
        SizedBox(
          width: 24,
          child: AppText('$value', textAlign: TextAlign.end),
        ),
      ],
    );
  }
}

class _TotalLine extends StatelessWidget {
  const _TotalLine({
    required this.total,
  });

  final int total;

  @override
  Widget build(BuildContext context) {
    return AppText(
      'Total $total',
      textAlign: TextAlign.end,
    );
  }
}
