import 'package:temopedia/Models/Details.dart';
import 'package:temopedia/Models/Evolution.dart';
import 'package:temopedia/Models/Location.dart';
import 'package:temopedia/Models/Stats.dart';
import 'package:temopedia/Models/Technique.dart';
import 'package:temopedia/utils/JsonHelper.dart';

class Temtem {
  // Properties
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
    List<String> _types = [];
    if (json[JsonHelper.types] != null)
      json[JsonHelper.types].forEach((item) => _types.add(item));

    List<String> _traits = [];
    if (json[JsonHelper.traits] != null)
      json[JsonHelper.traits].forEach((item) => _traits.add(item));

    List<Technique> _techniques = [];
    if (json[JsonHelper.techniques] != null)
      json[JsonHelper.techniques]
          .forEach((item) => _techniques.add(Technique.fromJson(item)));

    List<String> _trivia = [];
    if (json[JsonHelper.trivia] != null)
      json[JsonHelper.trivia].forEach((item) => _trivia.add(item));

    List<Location> _locations = [];
    if (json[JsonHelper.locations] != null)
      json[JsonHelper.locations]
          .forEach((item) => _locations.add(Location.fromJson(item)));

    return Temtem(
      number: json[JsonHelper.number],
      name: json[JsonHelper.name],
      types: _types,
      portraitWikiUrl: json[JsonHelper.portraitWikiUrl],
      wikiUrl: json[JsonHelper.wikiUrl],
      stats: Stats.fromJson(json[JsonHelper.stats]),
      traits: _traits,
      details: Details.fromJson(json[JsonHelper.details]),
      techniques: _techniques,
      trivia: _trivia,
      evolution: Evolution.fromJson(json[JsonHelper.evolution]),
      wikiPortraitUrlLarge: json[JsonHelper.wikiPortraitUrlLarge],
      locations: _locations,
      icon: json[JsonHelper.icon],
    );
  }
}
