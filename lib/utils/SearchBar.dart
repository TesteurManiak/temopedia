import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class SearchBar extends StatefulWidget {
  final EdgeInsets margin;
  final Function(String) refresh;

  SearchBar({
    this.margin = const EdgeInsets.symmetric(horizontal: 28),
    this.refresh,
  });

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _filter = TextEditingController();
  String searchText = "";

  @override
  void initState() {
    super.initState();
    _filter.addListener(() {
      if (_filter.text.isEmpty)
        searchText = "";
      else
        searchText = _filter.text;
      if (widget.refresh != null) widget.refresh(searchText);
    });
  }

  @override
  void dispose() {
    _filter.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      margin: widget.margin,
      decoration: ShapeDecoration(
        shape: StadiumBorder(),
        color: MyColors.lightFont,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.search, color: MyColors.background),
          SizedBox(width: 13),
          Expanded(
            child: TextField(
              onSubmitted: (_) => Navigator.pop(context),
              style: TextStyle(color: MyColors.background),
              controller: _filter,
              decoration: InputDecoration(
                hintText: "Search Temtems",
                hintStyle: TextStyle(fontSize: 14, color: MyColors.background),
                border: InputBorder.none,
              ),
            ),
          )
        ],
      ),
    );
  }
}
