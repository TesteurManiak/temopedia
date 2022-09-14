import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../../../bloc/temtems/temtems_cubit.dart';
import '../../../theme/theme.dart';
import '../../common/logo.dart';
import 'widgets/search_bar_modal.dart';
import 'widgets/select_type_modal.dart';
import 'widgets/tem_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _showSearchModal() {
    showModalBottomSheet(
      context: context,
      builder: (_) => const SearchBarModal(),
    );
  }

  void _showTypeModal() {
    showModalBottomSheet(
      context: context,
      builder: (_) => const SelectTypeModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final appTheme = AppTheme.of(context);
    final appColors = appTheme.colors;

    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme:
            IconThemeData(size: 22, color: appColors.speedDialIcon),
        backgroundColor: appColors.speedDialBackground,
        elevation: 8,
        children: <SpeedDialChild>[
          SpeedDialChild(
            label: "Search name",
            child: const Icon(Icons.search),
            onTap: _showSearchModal,
          ),
          SpeedDialChild(
            label: "Type",
            child: const Icon(Icons.sort),
            onTap: _showTypeModal,
          ),
          SpeedDialChild(
            label: "Favorite",
            child: const Icon(Icons.favorite),
            onTap: () {},
          ),
          SpeedDialChild(
            label: "Clear Filter",
            child: const Icon(Icons.clear),
            onTap: () {},
          ),
        ],
      ),
      body: BlocBuilder<TemtemsCubit, TemtemsState>(
        builder: (context, state) {
          switch (state.type) {
            case TemtemsStateType.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case TemtemsStateType.loaded:
              final loadedState = state as TemtemsLoaded;
              return CustomScrollView(
                slivers: [
                  const SliverAppBar(title: AppLogo()),
                  SliverPadding(
                    padding: const EdgeInsets.all(8),
                    sliver: SliverGrid(
                      delegate: SliverChildBuilderDelegate(
                        (context, index) {
                          final temtem = loadedState.temtems[index];
                          return TemTile(temtem);
                        },
                        childCount: loadedState.temtems.length,
                      ),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1.4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                    ),
                  ),
                ],
              );
            case TemtemsStateType.error:
              final errorState = state as TemtemsError;
              return Center(child: Text(errorState.message));
          }
        },
      ),
    );
  }
}
