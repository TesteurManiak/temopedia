import 'package:flutter/material.dart';

import '../../../core/extensions/build_context.dart';
import '../../../core/models/type.dart';
import '../../../gen/fonts.gen.dart';

class TypeChip extends StatelessWidget {
  const TypeChip({
    super.key,
    required this.type,
  });

  final TemType type;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 84,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: ShapeDecoration(
        shape: const StadiumBorder(),
        color: type.color(context).withOpacity(0.4),
      ),
      child: Text(
        type.translation(context.strings),
        style: const TextStyle(
          fontSize: 12,
          fontFamily: FontFamily.rubik,
        ),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
