import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/mixins/app_bar_size.dart';
import '../controllers/details_controller.dart';

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
    final name = ref.watch(
      detailsControllerProvider(id).select((s) => s.temtemOrNull?.name),
    );

    return AppBar(
      title: Text(name ?? ''),
    );
  }
}
