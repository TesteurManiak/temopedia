import 'package:flutter/material.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../styles/theme.dart';
import 'widgets/catch_rate_card.dart';
import 'widgets/details_card.dart';
import 'widgets/effectiveness_card.dart';
import 'widgets/evolution_chain.dart';
import 'widgets/game_description_card.dart';
import 'widgets/gender_ratio_card.dart';
import 'widgets/location_card.dart';
import 'widgets/stats_tab.dart';
import 'widgets/technique_list.dart';
import 'widgets/temtem_image.dart';
import 'widgets/temtem_name.dart';
import 'widgets/traits_card.dart';
import 'widgets/type_chip.dart';

class TemtemPage extends StatefulWidget {
  final TemTemApiTem temtem;

  const TemtemPage(this.temtem, {super.key});

  @override
  State<StatefulWidget> createState() => _TemtemPageState();
}

class _TemtemPageState extends State<TemtemPage> {
  static const circleHeight = 180.0;

  @override
  Widget build(BuildContext context) {
    final techniques = widget.temtem.techniques;
    return Scaffold(
      backgroundColor: MyColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          StreamBuilder<bool>(
            builder: (context, snapshot) {
              final data = snapshot.data;
              if (!snapshot.hasData || data == null) {
                return const SizedBox.shrink();
              }
              return IconButton(
                icon: Icon(data ? Icons.favorite : Icons.favorite_border),
                onPressed: () {},
              );
            },
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  const SizedBox(height: circleHeight - circleHeight / 6),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 32,
                      left: 8,
                      right: 8,
                      bottom: 32,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: MyColors.lightBackground,
                    ),
                    child: Column(
                      children: <Widget>[
                        TemtemName(widget.temtem),
                        Wrap(
                          spacing: 4,
                          children: widget.temtem.types
                              .map((e) => TypeChip(e.name))
                              .toList(),
                        ),
                        GameDescriptionCard(widget.temtem.gameDescription),
                        DetailsCard(
                          widget.temtem.details.heightCm,
                          widget.temtem.details.weightKg,
                        ),
                        EvolutionChain(widget.temtem),
                        StatsTab(
                          total: widget.temtem.stats.total,
                          hp: widget.temtem.stats.hp,
                          sta: widget.temtem.stats.sta,
                          spd: widget.temtem.stats.spd,
                          atk: widget.temtem.stats.atk,
                          def: widget.temtem.stats.def,
                          spatk: widget.temtem.stats.spatk,
                          spdef: widget.temtem.stats.spdef,
                        ),
                        TraitsCard(widget.temtem.traits),
                        if (techniques != null) TechniqueList(techniques),
                        GenderRatioCard(
                          widget.temtem.genderRatio.male,
                          widget.temtem.genderRatio.female,
                        ),
                        CatchRateCard(widget.temtem.catchRate),
                        LocationCard(widget.temtem),
                        EffectivenessCard(widget.temtem.types),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                top: 0,
                child: TemtemImage(
                  widget.temtem.wikiPortraitUrlLarge,
                  circleHeight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
