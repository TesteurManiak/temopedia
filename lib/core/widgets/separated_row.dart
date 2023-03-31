import 'package:flutter/material.dart';

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
      children: [
        ..._buildChildren(),
      ],
    );
  }

  Iterable<Widget> _buildChildren() sync* {
    for (int i = 0; i < children.length; i++) {
      yield children[i];
      if (i < children.length - 1) {
        yield separator;
      }
    }
  }
}
