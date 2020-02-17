import 'package:flutter/material.dart';

class TileType extends StatelessWidget {
  final String type;
  final bool large;

  TileType(this.type, {this.large = false});

  @override
  Widget build(BuildContext context) {
    return _typeWidget(type);
  }

  Widget _typeWidget(String item) {
    return Material(
      color: Colors.transparent,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: large ? 19 : 12,
          vertical: large ? 6 : 4,
        ),
        decoration: ShapeDecoration(
          shape: StadiumBorder(),
          color: Colors.white.withOpacity(0.2),
        ),
        child: Text(
          item,
          style: TextStyle(
            fontSize: large ? 12 : 8,
            height: 0.8,
            fontWeight: large ? FontWeight.bold : FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
