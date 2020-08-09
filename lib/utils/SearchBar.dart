import 'package:flutter/material.dart';
import 'package:temopedia/styles/TextStyles.dart';
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
  static String searchText = "";
  TextEditingController _filter;

  @override
  void initState() {
    super.initState();
    _filter = TextEditingController(text: searchText);
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
              autofocus: true,
              autocorrect: false,
              onSubmitted: (_) => Navigator.pop(context),
              style: TextStyles.background,
              controller: _filter,
              decoration: InputDecoration(
                hintText: "Search Temtems",
                hintStyle: TextStyles.background.copyWith(fontSize: 14),
                border: InputBorder.none,
                suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => WidgetsBinding.instance
                        .addPostFrameCallback((_) => _filter.clear())),
              ),
            ),
          )
        ],
      ),
    );
  }
}
