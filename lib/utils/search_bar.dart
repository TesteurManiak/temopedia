import 'package:flutter/material.dart';

import '../styles/text_styles.dart';
import '../styles/theme.dart';

class SearchBar extends StatefulWidget {
  final EdgeInsets margin;
  final String initialText;

  const SearchBar({
    super.key,
    this.margin = const EdgeInsets.symmetric(horizontal: 28),
    this.initialText = '',
  });

  @override
  State<StatefulWidget> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.initialText);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
              controller: _controller,
              autofocus: true,
              autocorrect: false,
              onSubmitted: (value) => Navigator.pop(context, value),
              style: TextStyles.background,
              decoration: InputDecoration(
                hintText: "Search Temtems",
                hintStyle: TextStyles.background.copyWith(fontSize: 14),
                border: InputBorder.none,
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: _controller.clear,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
