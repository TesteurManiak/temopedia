import 'package:flutter/material.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../styles/text_styles.dart';
import '../../styles/theme.dart';
import '../../temtem/widgets/type_chip.dart';

class TypeFoundCard extends StatelessWidget {
  final List<String> types;
  final TemTemApiTem temtem;

  const TypeFoundCard(this.types, this.temtem, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: MyColors.background,
        borderRadius: BorderRadius.circular(21),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: <Widget>[
          Text("Type(s) found:", style: TextStyles.lightText),
          const SizedBox(width: 8),
          Wrap(
            spacing: 5,
            children: <Widget>[...types.map(TypeChip.new).toList()],
          )
        ],
      ),
    );
  }
}
