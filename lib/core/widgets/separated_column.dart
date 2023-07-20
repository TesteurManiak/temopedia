import 'package:flutter/material.dart';
import 'package:temopedia/core/extensions/iterable.dart';

class SeparatedColumn extends StatelessWidget {
  const SeparatedColumn({
    super.key,
    required this.separator,
    required this.children,
    this.mainAxisSize = MainAxisSize.max,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final Widget separator;
  final List<Widget> children;
  final MainAxisSize mainAxisSize;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: mainAxisSize,
      crossAxisAlignment: crossAxisAlignment,
      children: [...children.separatedBy(separator)],
    );
  }
}
