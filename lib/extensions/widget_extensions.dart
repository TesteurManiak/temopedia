import 'package:flutter/material.dart';

extension WidgetModifier on Widget {
  Widget padding([EdgeInsetsGeometry padding = const EdgeInsets.all(16)]) =>
      Padding(padding: padding, child: this);
}
