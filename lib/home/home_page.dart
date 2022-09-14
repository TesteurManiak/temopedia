import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../theme/theme.dart';
import 'widgets/search_bar_modal.dart';
import 'widgets/select_type_modal.dart';
import 'widgets/tem_tile.dart';

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
            backgroundColor: appColors.speedDialBackground,
            child: Icon(Icons.search, color: appColors.speedDialIcon),
            onTap: _showSearchModal,
          ),
          SpeedDialChild(
            label: "Type",
            backgroundColor: appColors.speedDialBackground,
            child: Icon(Icons.sort, color: appColors.speedDialIcon),
            onTap: _showTypeModal,
          ),
          SpeedDialChild(
            label: "Favorite",
            backgroundColor: appColors.speedDialBackground,
            child: const Icon(Icons.favorite),
            onTap: () {},
          ),
          SpeedDialChild(
            label: "Clear Filter",
            backgroundColor: appColors.speedDialBackground,
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
      body: StreamBuilder<List<TemTemApiTem>>(
        builder: (context, snapshot) {
          final data = snapshot.data;
          if (!snapshot.hasData || data == null) {
            return const Center(child: CircularProgressIndicator());
          }
          return GridView.count(
            crossAxisCount: 2,
            padding: const EdgeInsets.all(8),
            childAspectRatio: 1.4,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            children: <Widget>[
              ...data.map<Widget>((e) => TemTile(e)).toList(),
            ],
          );
        },
      ),
    );
  }
}
