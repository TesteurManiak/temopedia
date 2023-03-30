import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/mixins/app_bar_size.dart';
import '../../../core/network/http_clients.dart';
import '../controllers/details_controller.dart';
import '../widgets/temtem_avatar.dart';

class DetailsView extends ConsumerStatefulWidget {
  const DetailsView({
    super.key,
    required this.id,
  });

  final int id;

  @override
  ConsumerState<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends ConsumerState<DetailsView> {
  @override
  void initState() {
    super.initState();

    ref.read(detailsControllerProvider(widget.id).notifier).getDetails();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _AppBar(id: widget.id),
      body: _Body(id: widget.id),
    );
  }
}

class _AppBar extends ConsumerWidget with AppBarSize {
  const _AppBar({
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

    return AppBar(
      title: showTitle ? Text('$name #$number') : null,
      centerTitle: true,
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
        if (iconUrl != null)
          SliverToBoxAdapter(
            child: TemtemAvatar(url: iconUrl),
          ),
      ],
    );
  }
}
