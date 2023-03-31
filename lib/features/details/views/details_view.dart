import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/mixins/app_bar_size.dart';
import '../../../core/models/stats.dart';
import '../../../core/network/http_clients.dart';
import '../../../core/widgets/app_text.dart';
import '../../../core/widgets/rounded_progress_bar.dart';
import '../../../core/widgets/separated_column.dart';
import '../../../core/widgets/separated_row.dart';
import '../../../core/widgets/sliver_space.dart';
import '../../../core/widgets/state_notifier_loader.dart';
import '../controllers/details_controller.dart';
import '../widgets/details_container.dart';
import '../widgets/header_content.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context) {
    return StateNotifierLoader(
      provider: detailsControllerProvider(id),
      child: Scaffold(
        appBar: AppBar(),
        body: _Body(id: id),
      ),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body({required this.id});

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stats = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull?.stats),
    );
    return CustomScrollView(
      slivers: [
        _SliverHeader(id: id),
        if (stats != null) ...[
          const SliverSpace(24),
          _SliverStatsSection(stats: stats),
        ],
      ],
    );
  }
}

class _SliverHeader extends ConsumerWidget with AppBarSize {
  const _SliverHeader({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final temtem = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull),
    );
    final icon = temtem?.icon;
    final iconUrl = icon != null ? ref.watch(imageUrlProvider(icon)) : null;
    final lumaIcon = temtem?.lumaIcon;
    final lumaIconUrl =
        lumaIcon != null ? ref.watch(imageUrlProvider(lumaIcon)) : null;
    final types = temtem?.types;
    final name = temtem?.name;
    final number = temtem?.number;

    return SliverToBoxAdapter(
      child: HeaderContent(
        name: name,
        number: number,
        types: types,
        iconUrl: iconUrl,
        lumaIconUrl: lumaIconUrl,
      ),
    );
  }
}

class _SliverStatsSection extends StatelessWidget {
  const _SliverStatsSection({
    required this.stats,
  });

  final Stats stats;

  @override
  Widget build(BuildContext context) {
    const separator = SizedBox(height: 8);

    return SliverToBoxAdapter(
      child: DetailsContainer(
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
