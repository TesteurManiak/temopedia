import 'package:flutter/material.dart';
import 'package:temopedia/core/extensions/build_context.dart';
import 'package:temopedia/core/models/stats.dart';
import 'package:temopedia/core/widgets/app_text.dart';
import 'package:temopedia/core/widgets/rounded_progress_bar.dart';
import 'package:temopedia/core/widgets/separated_column.dart';
import 'package:temopedia/core/widgets/separated_row.dart';
import 'package:temopedia/design_system/palette.dart';
import 'package:temopedia/features/details/widgets/details_container.dart';

class StatsSection extends StatelessWidget {
  const StatsSection({
    super.key,
    required this.stats,
  });

  final Stats stats;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return DetailsContainer(
      title: 'Stats',
      child: SeparatedColumn(
        separator: const SizedBox(height: 8),
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _StatLine(label: strings.hp_stat, value: stats.hp),
          _StatLine(label: strings.sta_stat, value: stats.sta),
          _StatLine(label: strings.spd_stat, value: stats.spd),
          _StatLine(label: strings.atk_stat, value: stats.atk),
          _StatLine(label: strings.def_stat, value: stats.def),
          _StatLine(label: strings.spatk_stat, value: stats.spatk),
          _StatLine(label: strings.spdef_stat, value: stats.spdef),
          const Divider(),
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
    final percentage = value / 100;
    final color = switch (percentage) {
      _ when percentage < 0.5 => Colors.red,
      _ when percentage >= 0.5 && percentage < 0.75 => Palette.orange2,
      _ => Colors.green,
    };

    return SeparatedRow(
      separator: const SizedBox(width: 8),
      children: [
        SizedBox(
          width: 44,
          child: AppText(label.toUpperCase()),
        ),
        Flexible(
          child: RoundedProgressBar(
            value: percentage,
            color: color,
          ),
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
  const _TotalLine(this.total);

  final int total;

  @override
  Widget build(BuildContext context) {
    final strings = context.strings;

    return SeparatedRow(
      separator: const Spacer(),
      children: [
        AppText(
          strings.total.toUpperCase(),
          type: AppTextType.genericSemiBold,
        ),
        AppText('$total', type: AppTextType.genericSemiBold),
      ],
    );
  }
}
