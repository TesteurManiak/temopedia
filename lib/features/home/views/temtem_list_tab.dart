import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/models/temtem.dart';
import '../../../core/network/http_clients.dart';
import '../../../core/widgets/app_network_image.dart';
import '../../../core/widgets/app_text.dart';
import '../../../core/widgets/error_widget.dart';
import '../../../core/widgets/sliver_space.dart';
import '../../../core/widgets/state_notifier_loader.dart';
import '../../../design_system/palette.dart';
import '../../../gen/assets.gen.dart';
import '../../details/navigation/route.dart';
import '../controllers/temtem_list.dart';
import '../navigation/route.dart';

class TemtemListTab extends ConsumerWidget {
  const TemtemListTab({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(temtemListControllerProvider);

    return StateNotifierLoader(
      provider: temtemListControllerProvider,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => FiltersRoute().push(context),
          child: const Icon(Icons.filter_list),
        ),
        body: state.when(
          loading: () => const Center(child: CircularProgressIndicator()),
          loaded: (temtems) => _Body(temtems: temtems),
          error: (e) => const Center(child: AppErrorWidget()),
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
    final name = temtem.name;
    final types = temtem.types;

    return GestureDetector(
      onTap: () => DetailsRoute(id: temtem.number).push(context),
      child: Container(
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
                      Colors.black.withOpacity(0.9),
                      Colors.transparent,
                    ],
                    stops: const [0.0, 0.3],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Wrap(
                  spacing: 4,
                  runSpacing: 4,
                  children: [
                    for (final type in types)
                      Image.asset(
                        type.assetPath,
                        height: 32,
                      ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: _NameAndNumber(name: name, number: temtem.number),
            ),
          ],
        ),
      ),
    );
  }
}

class _NameAndNumber extends StatelessWidget {
  const _NameAndNumber({
    required this.name,
    required this.number,
  });

  final String? name;
  final int number;

  @override
  Widget build(BuildContext context) {
    final localName = name;

    return Padding(
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (localName != null) Expanded(child: _Name(localName)),
          _Number(number),
        ],
      ),
    );
  }
}

class _Name extends StatelessWidget {
  const _Name(this.name);

  final String name;

  @override
  Widget build(BuildContext context) {
    return AppText(
      name,
      type: AppTextType.generic,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}

class _Number extends StatelessWidget {
  const _Number(this.number);

  final int number;

  @override
  Widget build(BuildContext context) {
    return AppText(
      '#$number',
      type: AppTextType.genericBold,
    );
  }
}