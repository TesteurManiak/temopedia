import 'package:flutter/material.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/TemtemPage/widgets/EvolutionChain.dart';
import 'package:temopedia/TemtemPage/widgets/StatsTab.dart';
import 'package:temopedia/TemtemPage/widgets/TechniqueList.dart';
import 'package:temopedia/TemtemPage/widgets/TemtemImage.dart';
import 'package:temopedia/TemtemPage/widgets/TemtemName.dart';
import 'package:temopedia/TemtemPage/widgets/TraitsCard.dart';
import 'package:temopedia/TemtemPage/widgets/TriviaCard.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/Theme.dart';

class TemtemPage extends StatefulWidget {
  final Temtem temtem;

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
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0.0),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(height: circleHeight - circleHeight / 6),
                    Container(
                      padding: EdgeInsets.only(
                          top: 32.0, left: 8.0, right: 8.0, bottom: 32.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                          color: MyColors.lightOrange),
                      child: Column(
                        children: <Widget>[
                          // Content goes here
                          TemtemName(widget.temtem),
                          _buildType(),
                          TraitsCard(widget.temtem.traits),
                          SizedBox(height: 12.0),
                          StatsTab(widget.temtem.stats),
                          SizedBox(height: 12.0),
                          EvolutionChain(widget.temtem),
                          SizedBox(height: 12.0),
                          TriviaCard(widget.temtem.trivia),
                          SizedBox(height: 12.0),
                          TechniqueList(widget.temtem.techniques),
                        ],
                      ),
                    ),
                  ],
                ),
                Positioned(
                    child: TemtemImage(
                        widget.temtem.wikiPortraitUrlLarge, circleHeight),
                    top: 0.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
