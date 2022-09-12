import 'package:flutter/material.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/text_styles.dart';
import 'package:temopedia/styles/theme.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

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
            children: <Widget>[...types.map((type) => TypeChip(type)).toList()],
          )
        ],
      ),
    );
  }
}
