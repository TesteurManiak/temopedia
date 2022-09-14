import 'package:flutter/material.dart';

import '../../../../utils/search_bar.dart';

class SearchBarModal extends StatelessWidget {
  const SearchBarModal({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 26),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 3,
            decoration: const ShapeDecoration(
              shape: StadiumBorder(),
              color: Color(0xFFF4F5F4),
            ),
          ),
          const SizedBox(height: 18),
          const SearchBar(margin: EdgeInsets.all(0)),
          SizedBox(height: MediaQuery.of(context).viewInsets.bottom + 18)
        ],
      ),
    );
  }
}
