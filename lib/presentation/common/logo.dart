import 'package:flutter/material.dart';

const _kDefaultHeight = 42.0;

class AppLogo extends StatelessWidget {
  final double? height;

  const AppLogo({super.key, this.height});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/logo.png",
      height: height ?? _kDefaultHeight,
      alignment: FractionalOffset.center,
    );
  }
}
