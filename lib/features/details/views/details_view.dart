import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/mixins/app_bar_size.dart';
import '../../../core/models/stats.dart';
import '../../../core/network/http_clients.dart';
import '../../../core/widgets/bottom_sliver_space.dart';
import '../../../core/widgets/sliver_space.dart';
import '../../../core/widgets/state_notifier_loader.dart';
import '../controllers/details_controller.dart';
import '../widgets/header_content.dart';
import '../widgets/stats_section.dart';
import '../widgets/traits_section.dart';

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
    final traits = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull?.traits),
    );

    return CustomScrollView(
      slivers: [
        _SliverHeader(id: id),
        if (stats != null) ...[
          const SliverSpace(24),
          _SliverStatsSection(stats: stats),
        ],
        if (traits != null && traits.isNotEmpty) ...[
          const SliverSpace(24),
          SliverToBoxAdapter(
            child: TraitsSection(
              traits: traits,
            ),
          ),
        ],
        const BottomSliverSpace(),
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
      child: StatsSection(stats: stats),
    );
  }
}
