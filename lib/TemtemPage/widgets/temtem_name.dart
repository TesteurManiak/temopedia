import 'package:flutter/material.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../styles/text_styles.dart';

class TemtemName extends StatelessWidget {
  final TemTemApiTem temtem;

  const TemtemName(this.temtem, {super.key});

  @override
  Widget build(BuildContext context) {
    String number = "";
    if (temtem.number < 100) number += "0";
    if (temtem.number < 10) number += "0";
    number += temtem.number.toString();
    return Column(
      children: <Widget>[
        Text(
          temtem.name,
          overflow: TextOverflow.ellipsis,
          style: TextStyles.mainName,
        ),
        Text(
          "Temtem #$number",
          overflow: TextOverflow.ellipsis,
          style: TextStyles.number,
        ),
      ],
    );
  }
}
