import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class TemtemNode extends StatelessWidget {
  final int number;

  TemtemNode(this.number);

  Temtem _getTemtem() {
    for (Temtem elem in globals.temtems) if (elem.number == number) return elem;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final calcSize = screenHeight * 0.1;
    final Temtem temtem = _getTemtem();

    return temtem == null
        ? Container()
        : Column(
            children: <Widget>[
              CachedNetworkImage(
                imageUrl: temtem.portraitWikiUrl,
                width: calcSize,
                height: calcSize,
                placeholder: (context, url) => Image.asset(
                  "assets/icon.png",
                  height: calcSize,
                  width: calcSize,
                ),
              ),
              SizedBox(height: 3),
              Text(
                temtem.name,
                style: TextStyle(color: MyColors.lightOrange),
              )
            ],
          );
  }
}

class EvolutionChain extends StatelessWidget {
  final Temtem temtem;

  EvolutionChain(this.temtem);

  Widget _buildRow(int current, {int next, int level}) {
    return Row(children: <Widget>[
      Expanded(child: TemtemNode(current)),
      level != null
          ? Expanded(
              child: Column(
                children: <Widget>[
                  Icon(Icons.arrow_forward, color: MyColors.lightOrange),
                  SizedBox(height: 7),
                  Text(
                    "+$level Lvl",
                    style: TextStyle(
                      color: MyColors.lightOrange,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          : Container(),
      next != null ? Expanded(child: TemtemNode(next)) : Container(),
    ]);
  }

  Widget _buildEvolution() {
    if (!temtem.evolution.evolves) return _buildRow(temtem.number);
    if (temtem.evolution.type == "special" &&
        temtem.evolution.description != null)
      return Text(
        temtem.evolution.description,
        style: TextStyle(color: MyColors.lightOrange),
      );
    List<Widget> _chain = [];
    for (int i = 1; i < temtem.evolution.evolutionTree.length; i++) {
      var previousNode = temtem.evolution.evolutionTree[i - 1];
      _chain.add(_buildRow(previousNode.number,
          next: temtem.evolution.evolutionTree[i].number,
          level: previousNode.levels));
    }
    return Column(children: _chain);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21.0),
          color: MyColors.background),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Evolution Chain",
            style: TextStyle(
              color: MyColors.lightOrange,
              fontWeight: FontWeight.bold,
              fontSize: 16,
              height: 0.8,
            ),
          ),
          SizedBox(height: 28),
          _buildEvolution(),
        ],
      ),
    );
  }
}