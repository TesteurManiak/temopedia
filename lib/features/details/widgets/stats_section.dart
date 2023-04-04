import 'package:flutter/material.dart';

import '../../../core/extensions/build_context.dart';
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
    return DetailsContainer(
      title: 'Stats',
      child: SeparatedColumn(
        separator: const SizedBox(height: 8),
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StatLine(label: 'hp', value: stats.hp),
          _StatLine(label: 'sta', value: stats.sta),
          _StatLine(label: 'spd', value: stats.spd),
          _StatLine(label: 'atk', value: stats.atk),
          _StatLine(label: 'def', value: stats.def),
          _StatLine(label: 'spatk', value: stats.spatk),
          _StatLine(label: 'spdef', value: stats.spdef),
          _TotalLine(stats.total),
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
        Flexible(child: RoundedProgressBar(value: value / 100)),
        SizedBox(
          width: 24,
          child: AppText('$value', textAlign: TextAlign.end),
        ),
      ],
    );
  }
}

class _TotalLine extends StatelessWidget {
  const _TotalLine(this.total);

  final int total;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return SeparatedRow(
      separator: const Spacer(),
      children: [
        AppText(strings.total.toUpperCase()),
        AppText('$total'),
      ],
    );
  }
}
