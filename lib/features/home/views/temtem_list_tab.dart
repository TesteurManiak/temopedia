import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:temopedia/core/models/temtem.dart';
import 'package:temopedia/core/widgets/error_widget.dart';
import 'package:temopedia/core/widgets/object_loader.dart';
import 'package:temopedia/core/widgets/sliver_space.dart';
import 'package:temopedia/features/home/controllers/temtem_list.dart';
import 'package:temopedia/features/home/navigation/route.dart';
import 'package:temopedia/features/home/widgets/temtem_tile.dart';
import 'package:temopedia/gen/assets.gen.dart';

class TemtemListTab extends ConsumerWidget {
  const TemtemListTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(temtemListControllerProvider);

    return ObjectLoader(
      loadable: ref.watch(temtemListControllerProvider.notifier),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => FiltersRoute().push<void>(context),
          child: const Icon(Icons.filter_list),
        ),
        body: state.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (temtems) => _Body(temtems: temtems),
          error: (e) => Center(child: AppErrorWidget(message: e.toString())),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.temtems,
  });

  final List<Temtem> temtems;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Image.asset(
              Assets.logos.logoBig.path,
              height: kToolbarHeight,
            ),
            centerTitle: true,
          ),
          const SliverSpace(16),
          SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (_, index) => TemtemTile(temtem: temtems[index]),
              childCount: temtems.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
            ),
          ),
        ],
      ),
    );
  }
}
