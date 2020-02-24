import 'package:temopedia/utils/JsonHelper.dart';

class LocationElem {
  final String name;
  final String wikiUrl;
  final String type;

  LocationElem({this.name, this.wikiUrl, this.type});

  factory LocationElem.fromJson(Map<String, dynamic> json) {
    return LocationElem(
      name: json[JsonHelper.name],
      wikiUrl: json[JsonHelper.wikiUrl],
      type: json[JsonHelper.type],
    );
  }
}

class Location {
  final String name;
  final String wikiUrl;
  final String description;
  final List<String> temtemTypes;
  final String type;
  final List<LocationElem> routes;
  final List<LocationElem> townsAndVillages;
  final List<LocationElem> landmarks;
  final List<String> temtem;
  final List<String> trivia;

  Location({
    this.name,
    this.wikiUrl,
    this.description,
    this.temtemTypes,
    this.type,
    this.routes,
    this.townsAndVillages,
    this.landmarks,
    this.temtem,
    this.trivia,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      name: json[JsonHelper.name],
      wikiUrl: json[JsonHelper.wikiUrl],
      description: json[JsonHelper.description],
    );
  }
}
