import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

import '../bloc/temtems/temtems_cubit.dart';
import '../theme/theme.dart';
import 'widgets/search_bar_modal.dart';
import 'widgets/select_type_modal.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _appLogo = const Image(
    image: ExactAssetImage("assets/logo.png"),
    height: 42.0,
    alignment: FractionalOffset.center,
  );

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: _appLogo,
      ),
      body: BlocBuilder<TemtemsCubit, TemtemsState>(
        builder: (context, state) {
          switch (state.type) {
            case TemtemsStateType.loading:
              return const Center(
                child: CircularProgressIndicator(),
              );
            case TemtemsStateType.loaded:
              return const Center(
                child: Text("Loaded"),
              );
            case TemtemsStateType.error:
              final errorState = state as TemtemsError;
              return ErrorWidget(errorState.message);
          }
        },
      ),
      // StreamBuilder<List<TemTemApiTem>>(
      //   builder: (context, snapshot) {
      //     final data = snapshot.data;
      //     if (!snapshot.hasData || data == null) {
      //       return const Center(child: CircularProgressIndicator());
      //     }
      //     return GridView.count(
      //       crossAxisCount: 2,
      //       padding: const EdgeInsets.all(8),
      //       childAspectRatio: 1.4,
      //       crossAxisSpacing: 10,
      //       mainAxisSpacing: 10,
      //       children: <Widget>[
      //         ...data.map<Widget>((e) => TemTile(e)).toList(),
      //       ],
      //     );
      //   },
      // ),
    );
  }
}
