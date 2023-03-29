import 'package:flutter/material.dart';

import '../../../core/models/type.dart';
import '../../../gen/app_localizations.dart';
import '../../../gen/fonts.gen.dart';

class TypeChip extends StatelessWidget {
  const TypeChip({
    super.key,
    required this.type,
  });

  final TemType type;

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context);

    return Container(
      alignment: Alignment.center,
      width: 84,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
      decoration: ShapeDecoration(
        shape: StadiumBorder(
          side: BorderSide(color: type.color(context)),
        ),
        color: Colors.white38,
      ),
      child: Text(
        type.translation(localizations),
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
