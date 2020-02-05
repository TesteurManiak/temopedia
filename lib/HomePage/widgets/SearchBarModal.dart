import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/SearchBar.dart';

class SearchBarModal extends StatelessWidget {
  final Function(String) refresh;

  SearchBarModal({this.refresh});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 26),
      decoration: BoxDecoration(
        color: MyColors.background,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.2,
            height: 3,
            decoration: ShapeDecoration(
              shape: StadiumBorder(),
              color: Color(0xFFF4F5F4),
            ),
          ),
          SizedBox(height: 18),
          SearchBar(
            margin: EdgeInsets.all(0),
            refresh: refresh,
          ),
          SizedBox(height: MediaQuery.of(context).viewInsets.bottom + 18)
        ],
      ),
    );
  }
}
