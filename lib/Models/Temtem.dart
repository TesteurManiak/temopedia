import 'package:temopedia/Models/Details.dart';
import 'package:temopedia/Models/Stats.dart';

class Temtem {
  final int number;
  final String name;
  final List<String> types;
  final String portraitWikiUrl;
  final String wikiUrl;
  final Stats stats;
  final List<String> traits;
  final Details details;

  Temtem({
    this.number,
    this.name,
    this.types,
    this.portraitWikiUrl,
    this.wikiUrl,
    this.stats,
    this.traits,
    this.details,
  });
}
