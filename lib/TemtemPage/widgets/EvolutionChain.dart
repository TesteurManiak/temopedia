import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/TemtemPage/TemtemArgs.dart';
import 'package:temopedia/TemtemPage/TemtemPageArgs.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class TemtemNode extends StatelessWidget {
  final int number;

  TemtemNode(this.number);

  TemTemApiTem? _getTemtem() {
    for (final elem in globals.temtems) if (elem.number == number) return elem;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final calcSize = screenHeight * 0.1;
    final temtem = _getTemtem();

    return temtem == null
        ? Container()
        : GestureDetector(
            onTap: () => Navigator.pushReplacementNamed(
                context, TemtemPageArgs.routeName,
                arguments: TemtemArgs(temtem: temtem)),
            child: Column(
              children: <Widget>[
                CachedNetworkImage(
                  imageUrl: temtem.wikiPortraitUrlLarge,
                  width: calcSize,
                  height: calcSize,
                  placeholder: (context, url) => Image.asset(
                    "assets/icon.png",
                    height: calcSize,
                    width: calcSize,
                  ),
                ),
                SizedBox(height: 3),
                Text(temtem.name, style: TextStyles.lightText)
              ],
            ),
          );
  }
}

class EvolutionChain extends StatelessWidget {
  final TemTemApiTem temtem;

  EvolutionChain(this.temtem);

  Widget _buildRow(int current, {int? next, int? level}) {
    return Row(children: <Widget>[
      Expanded(child: TemtemNode(current)),
      level != null
          ? Expanded(
              child: Column(
                children: <Widget>[
                  Icon(Icons.arrow_forward, color: MyColors.lightFont),
                  SizedBox(height: 7),
                  Text("+$level Lvl", style: TextStyles.evolLevel),
                ],
              ),
            )
          : Container(),
      next != null ? Expanded(child: TemtemNode(next)) : Container(),
    ]);
  }

  Widget _buildEvolution() {
    final description = temtem.evolution.description;
    final evolutionTreeLength = temtem.evolution.evolutionTree?.length ?? 0;
    if (!temtem.evolution.evolves) return _buildRow(temtem.number);
    if (temtem.evolution.type == "special" && description != null) {
      return Text(description, style: TextStyles.lightText);
    }
    List<Widget> _chain = [];
    for (int i = 1; i < evolutionTreeLength; i++) {
      var previousNode = temtem.evolution.evolutionTree![i - 1];
      _chain.add(
        _buildRow(
          previousNode.number,
          next: temtem.evolution.evolutionTree![i].number,
          level: previousNode.levels?.toInt(),
        ),
      );
    }
    return Column(children: _chain);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(21.0),
            color: MyColors.background),
        child: _buildEvolution(),
      ),
    );
  }
}
