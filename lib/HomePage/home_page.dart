import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:temopedia/HomePage/widgets/search_bar_modal.dart';
import 'package:temopedia/HomePage/widgets/select_type_modal.dart';
import 'package:temopedia/HomePage/widgets/tem_tile.dart';
import 'package:temopedia/bloc/bloc_provider.dart';
import 'package:temopedia/bloc/search_bloc.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class HomePage extends StatefulWidget {
  final List<TemTemApiTem> temtems;

  const HomePage(this.temtems, {super.key});

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _appLogo = const Image(
    image: ExactAssetImage("assets/logo.png"),
    height: 42.0,
    alignment: FractionalOffset.center,
  );

  late final SearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _searchBloc = BlocProvider.of<SearchBloc>(context);
    _searchBloc.firstInitFilteredTemtems();
  }

  _showSearchModal() {
    showModalBottomSheet(
      context: context,
      builder: (context) => const SearchBarModal(),
      backgroundColor: Colors.transparent,
    );
  }

  _showTypeModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => const SelectTypeModal(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme:
            const IconThemeData(size: 22, color: MyColors.lightFont),
        backgroundColor: MyColors.background,
        elevation: 8,
        children: <SpeedDialChild>[
          SpeedDialChild(
            label: "Search name",
            backgroundColor: MyColors.background,
            child: const Icon(Icons.search, color: MyColors.lightFont),
            onTap: _showSearchModal,
          ),
          SpeedDialChild(
            label: "Type",
            backgroundColor: MyColors.background,
            child: const Icon(Icons.sort, color: MyColors.lightFont),
            onTap: _showTypeModal,
          ),
          SpeedDialChild(
            label: "Favorite",
            backgroundColor: MyColors.background,
            child: const Icon(Icons.favorite),
            onTap: _searchBloc.favoriteFilter,
          ),
          SpeedDialChild(
            label: "Clear Filter",
            backgroundColor: MyColors.background,
            child: const Icon(Icons.clear),
            onTap: _searchBloc.resetFilteredList,
          ),
        ],
      ),
      backgroundColor: MyColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: _appLogo,
      ),
      body: SafeArea(
        child: StreamBuilder<List<TemTemApiTem>>(
          stream: _searchBloc.onFilteredTemtemsChanged,
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
      ),
    );
  }
}
