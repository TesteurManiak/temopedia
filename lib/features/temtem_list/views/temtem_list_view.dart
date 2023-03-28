import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/temtem.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/error_widget.dart';
import '../../../design_system/palette.dart';
import '../../../gen/assets.gen.dart';
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
        loaded: (temtems) => _Body(temtems: temtems),
        error: (e) => const Center(child: AppErrorWidget()),
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
    return CustomScrollView(
      slivers: [
        SliverGrid(
          delegate: SliverChildBuilderDelegate(
            (_, index) => _TemtemTile(temtem: temtems[index]),
            childCount: temtems.length,
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            mainAxisSpacing: 8,
          ),
        ),
      ],
    );
  }
}

class _TemtemTile extends StatelessWidget {
  const _TemtemTile({
    required this.temtem,
  });

  final Temtem temtem;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: MyColors.lightBackground,
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: AppNetworkImage(
              url: temtem.wikiPortraitUrlLarge,
              fallbackUrl: temtem.portraitWikiUrl,
              errorWidget: (_, __, ___) {
                return Image.asset(Assets.icons.icnUnknown.path);
              },
            ),
          ),
        ],
      ),
    );
  }
}
