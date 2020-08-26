import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/Database/DatabaseHelper.dart';
import 'package:temopedia/TemtemPage/widgets/CatchRateCard.dart';
import 'package:temopedia/TemtemPage/widgets/DetailsCard.dart';
import 'package:temopedia/TemtemPage/widgets/EffectivenessCard.dart';
import 'package:temopedia/TemtemPage/widgets/EvolutionChain.dart';
import 'package:temopedia/TemtemPage/widgets/GameDescriptionCard.dart';
import 'package:temopedia/TemtemPage/widgets/GenderRatioCard.dart';
import 'package:temopedia/TemtemPage/widgets/LocationCard.dart';
import 'package:temopedia/TemtemPage/widgets/StatsTab.dart';
import 'package:temopedia/TemtemPage/widgets/TechniqueList.dart';
import 'package:temopedia/TemtemPage/widgets/TemtemImage.dart';
import 'package:temopedia/TemtemPage/widgets/TemtemName.dart';
import 'package:temopedia/TemtemPage/widgets/TraitsCard.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temopedia/extensions/extensions.dart' show TemTemApiTemModifier;
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class TemtemPage extends StatefulWidget {
  final TemTemApiTem temtem;

  TemtemPage(this.temtem);

  @override
  State<StatefulWidget> createState() => _TemtemPageState();
}

class _TemtemPageState extends State<TemtemPage> {
  final double circleHeight = 180;

  Widget _buildType() {
    List<Widget> _types = List();
    widget.temtem.types.forEach((type) => _types.add(TypeChip(type)));
    return Wrap(children: _types, spacing: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
                widget.temtem.owned ? Icons.favorite : Icons.favorite_border),
            onPressed: () {
              setState(() {
                if (widget.temtem.owned)
                  globals.favorites.remove(widget.temtem);
                else
                  globals.favorites.add(widget.temtem);
                if (!kIsWeb) DatabaseHelper.instance.update(widget.temtem);
              });
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
                  SizedBox(height: circleHeight - circleHeight / 6),
                  Container(
                    padding:
                        EdgeInsets.only(top: 32, left: 8, right: 8, bottom: 32),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: MyColors.lightBackground),
                    child: Column(
                      children: <Widget>[
                        TemtemName(widget.temtem),
                        _buildType(),
                        GameDescriptionCard(widget.temtem.gameDescription),
                        DetailsCard(widget.temtem.details.heightCm,
                            widget.temtem.details.weightKg),
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
                        TechniqueList(widget.temtem.techniques),
                        GenderRatioCard(widget.temtem.genderRatio.male,
                            widget.temtem.genderRatio.female),
                        CatchRateCard(widget.temtem.catchRate),
                        LocationCard(widget.temtem),
                        EffectivenessCard(widget.temtem.types),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                child: TemtemImage(
                  widget.temtem.wikiPortraitUrlLarge,
                  circleHeight,
                ),
                top: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
