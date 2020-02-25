import 'package:flutter/material.dart';
import 'package:temopedia/Api/TemtemApi.dart';
import 'package:temopedia/Database/DatabaseHelper.dart';
import 'package:temopedia/HomePage/HomePage.dart';
import 'package:temopedia/LoadingPage/LoadingPage.dart';
import 'package:temopedia/Models/Location.dart';
import 'package:temopedia/Models/Technique.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/Models/Traits.dart';
import 'package:temopedia/Models/Type.dart';
import 'package:temopedia/Models/Weakness.dart';
import 'package:temopedia/RootPage/widgets/ErrorDialog.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class RootPage extends StatefulWidget {
  RootPage();

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final api = TemtemApi();
  final dbHelper = DatabaseHelper.instance;
  bool _isLoading = true;

  String _loadingText;

  _loadTemtems() async {
    try {
      setState(() => _loadingText = "Loading Temtems...");
      var json = await api.getRequest(TemtemApi.allTemtems);
      json.forEach((item) => globals.temtems.add(Temtem.fromJson(item)));
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Temtems. Please restart the app or report an issue.");
    }
  }

  _loadFavorites() async {
    try {
      setState(() => _loadingText = "Loading Favorites...");
      for (var temtem in globals.temtems)
        temtem.owned = await dbHelper.read(temtem.number);
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Favorites. Please restart the app or report an issue.");
    }
  }

  _loadTypes() async {
    try {
      setState(() => _loadingText = "Loading Types...");
      var json = await api.getRequest(TemtemApi.types);
      json.forEach((item) => globals.types.add(TemType.fromJson(item)));
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Types. Please restart the app or report an issue.");
    }
  }

  _loadTraits() async {
    try {
      setState(() => _loadingText = "Loading Traits...");
      var json = await api.getRequest(TemtemApi.traits);
      json.forEach((item) => globals.traits.add(Traits.fromJson(item)));
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Traits. Please restart the app or report an issue.");
    }
  }

  _loadTechniques() async {
    try {
      setState(() => _loadingText = "Loading Techniques...");
      var json = await api.getRequest(TemtemApi.techniques);
      json.forEach((item) => globals.techiques.add(Technique.fromJson(item)));
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Techniques. Please restart the app or report an issue.");
    }
  }

  _loadLocations() async {
    try {
      setState(() => _loadingText = "Loading Locations...");
      var json = await api.getRequest(TemtemApi.locations);
      json.forEach((item) => globals.locations.add(Location.fromJson(item)));
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Locations. Please restart the app or report an issue.");
    }
  }

  _loadWeaknesses() async {
    try {
      setState(() => _loadingText = "Loading Weaknesses...");
      var json = await api.getRequest(TemtemApi.weaknesses);
      (json as Map<String, dynamic>).forEach((key, value) =>
          globals.weaknesses.add(Weakness.fromJson(value, key)));
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Weaknesses. Please restart the app or report an issue.");
    }
  }

  _loadList() async {
    try {
      await _loadTemtems();
      await _loadFavorites();
      await _loadTypes();
      await _loadTraits();
      await _loadTechniques();
      await _loadLocations();
      await _loadWeaknesses();
      setState(() => _isLoading = false);
    } catch (e) {
      print(e);
      showDialog(context: context, builder: (context) => ErrorDialog(e));
    }
  }

  @override
  void initState() {
    super.initState();
    _loadList();
  }

  @override
  Widget build(BuildContext context) {
    switch (_isLoading) {
      case false:
        return HomePage(globals.temtems, dbHelper);
      default:
        return LoadingPage(loadingText: _loadingText);
    }
  }
}
