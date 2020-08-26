import 'package:flutter/material.dart';
import 'package:temopedia/bloc/blocProvider.dart';
import 'package:temopedia/bloc/searchBloc.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';

class SearchBar extends StatefulWidget {
  final EdgeInsets margin;

  SearchBar({this.margin = const EdgeInsets.symmetric(horizontal: 28)});

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  SearchBloc _searchBloc;

  @override
  void initState() {
    super.initState();
    _searchBloc = BlocProvider.of<SearchBloc>(context);
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
              controller: _searchBloc.filter,
              decoration: InputDecoration(
                hintText: "Search Temtems",
                hintStyle: TextStyles.background.copyWith(fontSize: 14),
                border: InputBorder.none,
                suffixIcon: IconButton(
                    icon: Icon(Icons.clear),
                    onPressed: () => _searchBloc.resetTextSearch()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
