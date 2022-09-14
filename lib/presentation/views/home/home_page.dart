import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../../bloc/temtems/temtems_cubit.dart';
import '../../common/error.dart';
import '../../common/logo.dart';
import 'widgets/filter_dial_button.dart';
import 'widgets/shimmer_grid.dart';
import 'widgets/tem_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TemtemsCubit, TemtemsState>(
      builder: (context, state) {
        return Scaffold(
          floatingActionButton:
              !state.isLoaded ? null : const FilterDialButton(),
          body: Builder(
            builder: (context) {
              switch (state.type) {
                case TemtemsStateType.loading:
                  return const ShimmerGrid();
                case TemtemsStateType.loaded:
                  final loadedState = state as TemtemsLoaded;
                  return _TemtemsScrollView(temtems: loadedState.temtems);
                case TemtemsStateType.error:
                  final errorState = state as TemtemsError;
                  return AppError(
                    error: errorState.message,
                    onRetry: () => context.read<TemtemsCubit>().fetchTemtems(),
                  );
              }
            },
          ),
        );
      },
    );
  }
}

class _TemtemsScrollView extends StatelessWidget {
  const _TemtemsScrollView({required this.temtems});

  final List<TemTemApiTem> temtems;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppBar(title: AppLogo()),
        SliverPadding(
          padding: const EdgeInsets.all(8),
          sliver: SliverGrid(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final temtem = temtems[index];
                return TemTile(temtem);
              },
              childCount: temtems.length,
            ),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1.4,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
          ),
        ),
      ],
    );
  }
}
