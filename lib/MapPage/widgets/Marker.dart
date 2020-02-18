import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class Marker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(6),
          color: MyColors.marker.withOpacity(0.7),
          border: Border.all(
            width: 2,
            color: Colors.white,
          )),
      height: 20,
      width: 20,
    );
  }
}
