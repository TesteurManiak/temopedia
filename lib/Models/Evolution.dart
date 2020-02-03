class EvolutionNode {
  final int number;
  final String name;
  final int stage;
  final int levels;

  EvolutionNode({this.number, this.name, this.stage, this.levels});

  factory EvolutionNode.fromJson(Map<String, dynamic> json) {
    return EvolutionNode(
      number: json['number'],
      name: json['name'],
      stage: json['stage'],
      levels: json['levels'],
    );
  }
}

class Evolution {
  final int stage;
  final List<EvolutionNode> evolutionTree;
  final bool evolves;
  final String type;

  Evolution({this.stage, this.evolutionTree, this.evolves, this.type});

  factory Evolution.fromJson(Map<String, dynamic> json) {
    return Evolution(
      stage: json['stage'],
      evolutionTree: json['evolutionTree']
          .map((node) => EvolutionNode.fromJson(node))
          .toList(),
      evolves: json['evolves'],
      type: json['types'],
    );
  }
}
