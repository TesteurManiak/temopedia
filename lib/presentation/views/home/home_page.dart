import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../bloc/search/search_cubit.dart';
import '../../../bloc/temtems/temtems_cubit.dart';
import '../../common/error.dart';
import '../../common/logo.dart';
import 'widgets/filter_dial_button.dart';
import 'widgets/shimmer_grid.dart';
import 'widgets/tem_tile.dart';

class HomePageProvider extends StatelessWidget {
  const HomePageProvider({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SearchCubit(),
      child: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TemtemsCubit, TemtemsState>(
      listener: (context, state) {
        if (state is TemtemsLoaded) {
          context.read<SearchCubit>().updateFullFilterList(state.temtems);
        }
      },
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
                  return const _TemtemsScrollView();
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
  const _TemtemsScrollView();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        final temtems = state.filteredTemtems;
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
      },
    );
  }
}
