import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/temtem.dart';
import '../../../core/network/http_clients.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/error_widget.dart';
import '../../../core/widgets/sliver_space.dart';
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
      ),
    );
  }
}

class _TemtemTile extends ConsumerWidget {
  const _TemtemTile({
    required this.temtem,
  });

  final Temtem temtem;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final iconUrl = ref.watch(imageUrlProvider(temtem.icon));

    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: MyColors.lightBackground,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: AppNetworkImage(
              url: iconUrl,
              fallbackUrl: temtem.portraitWikiUrl,
              errorWidget: (_, __, ___) {
                return Image.asset(Assets.icons.icnUnknown.path);
              },
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.transparent,
                    Colors.black.withOpacity(0.9),
                  ],
                  stops: const [0.4, 1.0],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
