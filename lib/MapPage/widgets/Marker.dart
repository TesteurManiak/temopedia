import 'package:flutter/material.dart';
import 'package:temopedia/styles/Theme.dart';

class Marker extends StatelessWidget {
  final double size;
  final double borderWidth;
  final Color color;

  Marker({@required this.size, @required this.borderWidth, this.color});

  @override
  Widget build(BuildContext context) {
    Color _color = color ?? MyColors.marker;
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(5),
          color: _color.withOpacity(0.7),
          border: Border.all(
            width: borderWidth,
            color: Colors.white,
          )),
      height: size,
      width: size,
    );
  }
}
