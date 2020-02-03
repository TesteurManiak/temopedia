import 'package:temopedia/Models/Details.dart';
import 'package:temopedia/Models/Evolution.dart';
import 'package:temopedia/Models/Location.dart';
import 'package:temopedia/Models/Stats.dart';
import 'package:temopedia/Models/Technique.dart';

class Temtem {
  final int number;
  final String name;
  final List<String> types;
  final String portraitWikiUrl;
  final String wikiUrl;
  final Stats stats;
  final List<String> traits;
  final Details details;
  final List<Technique> techniques;
  final List<String> trivia;
  final Evolution evolution;
  final String wikiPortraitUrlLarge;
  final List<Location> locations;
  final String icon;

  Temtem({
    this.number,
    this.name,
    this.types,
    this.portraitWikiUrl,
    this.wikiUrl,
    this.stats,
    this.traits,
    this.details,
    this.techniques,
    this.trivia,
    this.evolution,
    this.wikiPortraitUrlLarge,
    this.locations,
    this.icon,
  });

  factory Temtem.fromJson(Map<String, dynamic> json) {
    return Temtem(
        number: json['number'],
        name: json['name'],
        types: json['types'].map((String type) => type).toList(),
        portraitWikiUrl: json['portraitWikiUrl'],
        wikiUrl: json['wikiUrl'],
        stats: null);
  }
}
