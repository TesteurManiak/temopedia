import 'package:flutter/material.dart';

import '../bloc/search_bloc.dart';
import '../styles/text_styles.dart';
import '../styles/theme.dart';

class SearchBar extends StatefulWidget {
  final EdgeInsets margin;

  const SearchBar({
    super.key,
    this.margin = const EdgeInsets.symmetric(horizontal: 28),
  });

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late final SearchBloc _searchBloc;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      margin: widget.margin,
      decoration: const ShapeDecoration(
        shape: StadiumBorder(),
        color: MyColors.lightFont,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          const Icon(Icons.search, color: MyColors.background),
          const SizedBox(width: 13),
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
                  icon: const Icon(Icons.clear),
                  onPressed: () => _searchBloc.resetTextSearch(),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
