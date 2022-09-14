import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../../bloc/temtem_types/temtem_types_cubit.dart';
import '../../styles/text_styles.dart';
import '../../styles/theme.dart';
import 'type_chip.dart';

class SynergyInfo extends StatelessWidget {
  final String synergy;
  final List<SynergyEffect> synergyEffects;

  const SynergyInfo(this.synergy, this.synergyEffects, {super.key});

  TemTemApiType? _getType(BuildContext context) {
    final types = context.read<TemtemTypesCubit>().temtemTypes;
    for (var elem in types) {
      if (elem.name.toLowerCase() == synergy.toLowerCase()) return elem;
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final synergyType = _getType(context);

    if (synergyType == null) return Container();

    return Container(
      decoration: BoxDecoration(
        color: MyColors.lightBackground,
        borderRadius: BorderRadius.circular(30),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Wrap(
        alignment: WrapAlignment.center,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text("Synergy:", style: TextStyles.lightText),
              const SizedBox(width: 10),
              TypeChip(synergyType.name),
            ],
          ),
          ...synergyEffects
              .map(
                (synergy) => Text(synergy.effect, style: TextStyles.lightText),
              )
              .toList(),
        ],
      ),
    );
  }
}
