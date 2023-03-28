import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/temtem_list.dart';

class TemtemListView extends ConsumerStatefulWidget {
  const TemtemListView({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TemtemListViewState();
}

class _TemtemListViewState extends ConsumerState<TemtemListView> {
  late final TemtemListController controller;

  @override
  void initState() {
    super.initState();

    controller = ref.read(temtemListControllerProvider.notifier);
    controller.fetchTemtemList();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(temtemListControllerProvider);

    return Scaffold(
      body: state.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        loaded: (temtems) {
          return const CustomScrollView();
        },
        error: (e) => Center(child: Text(e.toString())),
      ),
    );
  }
}
