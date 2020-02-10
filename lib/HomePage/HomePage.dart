import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/HomePage/widgets/SearchBarModal.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/TemtemPage/TemtemPage.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/Theme.dart';

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

  @override
  void initState() {
    super.initState();
    _filteredList = widget.temtems;
  }

  _refreshSearch(String searchTxt) {
    _filteredList = widget.temtems;
    setState(() {
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

  _showSearchModal() {
    showModalBottomSheet(
      context: context,
      builder: (context) => SearchBarModal(refresh: _refreshSearch),
      backgroundColor: Colors.transparent,
    );
  }

  Widget _buildTemtemCard(Temtem item) {
    return Container(
      margin: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        color: MyColors.lightBackground,
        borderRadius: BorderRadius.circular(21.0),
      ),
      child: ListTile(
        onTap: () {
          _filteredList = widget.temtems;
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => TemtemPage(item)));
        },
        leading: CircleAvatar(
          backgroundColor: MyColors.portraitBack,
          child: CachedNetworkImage(
            imageUrl: item.portraitWikiUrl,
            placeholder: (context, url) =>
                Image.asset("assets/temtem_unknown.png"),
          ),
        ),
        title: Text(
          "${item.number}. ${item.name}",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: MyColors.lightFont),
        ),
        trailing: Wrap(
          children: List<Widget>.generate(item.types.length,
              (index) => TypeChip(item.types[index], dispTitle: false)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.lightBackground,
        onPressed: _showSearchModal,
        child: Icon(Icons.search, color: MyColors.lightFont),
      ),
      backgroundColor: MyColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(child: _appLogo),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: Scrollbar(
            child: ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: _filteredList == null ? 0 : _filteredList.length,
              itemBuilder: (context, index) =>
                  _buildTemtemCard(_filteredList[index]),
            ),
          ),
        ),
      ),
    );
  }
}
