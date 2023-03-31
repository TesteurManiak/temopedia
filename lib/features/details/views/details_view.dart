import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/mixins/app_bar_size.dart';
import '../../../core/models/stats.dart';
import '../../../core/network/http_clients.dart';
import '../../../core/widgets/app_text.dart';
import '../../../core/widgets/separated_column.dart';
import '../../../core/widgets/separated_row.dart';
import '../../../core/widgets/state_notifier_loader.dart';
import '../../../design_system/palette.dart';
import '../controllers/details_controller.dart';
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
        if (stats != null) _SliverStatsSection(stats: stats),
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
    return SliverToBoxAdapter(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
        margin: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(12)),
          color: Palette.darkPurple3,
        ),
        child: SeparatedRow(
          separator: const SizedBox(width: 12),
          children: [
            Expanded(
              child: SeparatedColumn(
                separator: const SizedBox(height: 4),
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
                separator: const SizedBox(height: 4),
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
          child: AppText(
            label.toUpperCase(),
            type: AppTextType.generic,
          ),
        ),
        Flexible(
          // TODO: replace with rounded progress bar
          child: LinearProgressIndicator(
            value: value / 100,
            color: Palette.orange2,
            backgroundColor: Palette.darkPurple4,
          ),
        ),
        Text('$value'),
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
      type: AppTextType.generic,
      textAlign: TextAlign.end,
    );
  }
}
