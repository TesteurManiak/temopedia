import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/mixins/app_bar_size.dart';
import '../../../core/network/http_clients.dart';
import '../../../core/widgets/state_notifier_loader.dart';
import '../controllers/details_controller.dart';
import '../widgets/temtem_avatar.dart';

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
    final temtem = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull),
    );
    final icon = temtem?.icon;
    final iconUrl = icon != null ? ref.watch(imageUrlProvider(icon)) : null;

    return CustomScrollView(
      slivers: [
        _SliverAppBar(id: id),
        if (iconUrl != null)
          SliverToBoxAdapter(
            child: TemtemAvatar(url: iconUrl),
          ),
      ],
    );
  }
}

class _SliverAppBar extends ConsumerWidget with AppBarSize {
  const _SliverAppBar({
    required this.id,
  });

  final int id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final number = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull?.number),
    );
    final name = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull?.name),
    );
    final showTitle = number != null && name != null;

    return SliverAppBar(
      title: showTitle ? Text('$name #$number') : null,
      centerTitle: true,
      pinned: true,
      floating: true,
    );
  }
}
