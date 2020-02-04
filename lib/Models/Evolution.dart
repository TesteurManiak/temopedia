import 'package:temopedia/utils/JsonHelper.dart';

class EvolutionNode {
  final int number;
  final String name;
  final int stage;
  final dynamic levels;

  EvolutionNode({this.number, this.name, this.stage, this.levels});

  factory EvolutionNode.fromJson(Map<String, dynamic> json) {
    return EvolutionNode(
      number: json[JsonHelper.number],
      name: json[JsonHelper.name],
      stage: json[JsonHelper.stage],
      levels: json[JsonHelper.levels],
    );
  }
}

class Evolution {
  final int stage;
  final List<EvolutionNode> evolutionTree;
  final bool evolves;
  final String type;
  final String description;

  Evolution(
      {this.stage,
      this.evolutionTree,
      this.evolves,
      this.type,
      this.description});

  factory Evolution.fromJson(Map<String, dynamic> json) {
    List<EvolutionNode> _evolutionTree = [];
    if (json[JsonHelper.evolutionTree] != null)
      json[JsonHelper.evolutionTree]
          .forEach((node) => _evolutionTree.add(EvolutionNode.fromJson(node)));
    return Evolution(
      stage: json[JsonHelper.stage],
      evolutionTree: _evolutionTree,
      evolves: json[JsonHelper.evolves],
      type: json[JsonHelper.type],
      description: json[JsonHelper.description],
    );
  }
}
