import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:temopedia/HomePage/widgets/SearchBarModal.dart';
import 'package:temopedia/HomePage/widgets/SelectTypeModal.dart';
import 'package:temopedia/HomePage/widgets/TemTile.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/styles/temopedia_icons.dart';
import 'package:temopedia/utils/Globals.dart';

class HomePage extends StatefulWidget {
  final List<Temtem> temtems;

  HomePage(this.temtems);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _appLogo = Image(
    image: ExactAssetImage("assets/logo.png"),
    height: 42.0,
    alignment: FractionalOffset.center,
  );

  List<Temtem> _filteredList;
  List<String> _selectedTypes = [];

  _resetFilter() {
    _filteredList = widget.temtems;
    _selectedTypes.clear();
  }

  @override
  void initState() {
    super.initState();
    _resetFilter();
  }

  _refreshSearch(String searchTxt) {
    setState(() {
      _resetFilter();
      if (searchTxt.isNotEmpty) {
        List<Temtem> tmp = [];
        _filteredList.forEach((elem) {
          if (elem.name.toLowerCase().contains(searchTxt.toLowerCase()))
            tmp.add(elem);
        });
        _filteredList = tmp;
      }
    });
  }

  _refreshType(String type, bool toAdd) {
    if (toAdd)
      _selectedTypes.add(type);
    else
      _selectedTypes.remove(type);
    setState(() {
      _filteredList = widget.temtems;
      if (_selectedTypes.isNotEmpty) {
        List<Temtem> tmp = [];
        _filteredList.forEach((temtem) {
          for (String hasType in temtem.types) {
            if (_selectedTypes.contains(hasType)) {
              tmp.add(temtem);
              break;
            }
          }
        });
        _filteredList = tmp;
      }
    });
  }

  _showSearchModal() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SearchBarModal(refresh: _refreshSearch),
      backgroundColor: Colors.transparent,
    );
  }

  _showTypeModal() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) =>
          SelectTypeModal(refresh: _refreshType, selectedTypes: _selectedTypes),
    );
  }

  _sortByAlpha() {
    setState(() {
      _resetFilter();
      _filteredList
          .sort((a, b) => a.name.toLowerCase().compareTo(b.name.toLowerCase()));
    });
  }

  _sortByNumber() {
    setState(() {
      _resetFilter();
      _filteredList.sort((a, b) => a.number.compareTo(b.number));
    });
  }

  _sortFavorite() {
    setState(() {
      _resetFilter();
      List<Temtem> tmp = [];
      _filteredList.forEach((temtem) {
        if (temtem.owned) tmp.add(temtem);
      });
      _filteredList = tmp;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: SpeedDial(
        animatedIcon: AnimatedIcons.menu_close,
        animatedIconTheme: IconThemeData(size: 22, color: MyColors.lightFont),
        backgroundColor: MyColors.background,
        elevation: 8,
        children: [
          SpeedDialChild(
            backgroundColor: MyColors.background,
            child: Icon(Icons.search, color: MyColors.lightFont),
            onTap: _showSearchModal,
          ),
          SpeedDialChild(
            backgroundColor: MyColors.background,
            child: Icon(Temopedia.sort_name_up, color: MyColors.lightFont),
            onTap: _sortByAlpha,
          ),
          SpeedDialChild(
            backgroundColor: MyColors.background,
            child: Icon(Temopedia.sort_number_up, color: MyColors.lightFont),
            onTap: _sortByNumber,
          ),
          SpeedDialChild(
            label: "Type",
            backgroundColor: MyColors.background,
            child: Icon(Icons.sort, color: MyColors.lightFont),
            onTap: _showTypeModal,
          ),
          SpeedDialChild(
            label: "Favorite",
            backgroundColor: MyColors.background,
            child: Icon(Icons.favorite),
            onTap: _sortFavorite,
          )
        ],
      ),
      backgroundColor: MyColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(child: _appLogo),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(8),
          child: Scrollbar(
            child: GridView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: _filteredList == null ? 0 : _filteredList.length,
              itemBuilder: (context, index) =>
                  TemTile(_filteredList[index], resetFilter: _resetFilter),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1.4,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
