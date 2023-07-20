import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temopedia/core/extensions/iterable.dart';
import 'package:temopedia/core/mixins/app_bar_size.dart';
import 'package:temopedia/core/models/stats.dart';
import 'package:temopedia/core/network/http_clients.dart';
import 'package:temopedia/core/widgets/bottom_sliver_space.dart';
import 'package:temopedia/core/widgets/object_loader.dart';
import 'package:temopedia/core/widgets/sliver_space.dart';
import 'package:temopedia/features/details/controllers/details_controller.dart';
import 'package:temopedia/features/details/widgets/header_content.dart';
import 'package:temopedia/features/details/widgets/stats_section.dart';
import 'package:temopedia/features/details/widgets/traits_section.dart';

class DetailsView extends ConsumerWidget {
  const DetailsView({
    super.key,
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ObjectLoader(
      loadable: ref.watch(detailsControllerProvider(id).notifier),
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
        ...[
          _SliverHeader(id: id),
          if (stats != null) _SliverStatsSection(stats: stats),
          if (traits != null && traits.isNotEmpty)
            SliverToBoxAdapter(child: TraitsSection(traits: traits)),
          const BottomSliverSpace(),
        ].separatedBy(const SliverSpace(24)),
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
    return SliverToBoxAdapter(child: StatsSection(stats: stats));
  }
}
