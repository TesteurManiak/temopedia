import 'package:flutter/material.dart';
import 'package:temopedia/core/extensions/iterable.dart';

class SeparatedRow extends StatelessWidget {
  const SeparatedRow({
    super.key,
    required this.separator,
    required this.children,
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.center,
  });

  final Widget separator;
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: [...children.separatedBy(separator)],
    );
  }
}
