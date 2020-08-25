import 'package:flutter/material.dart';
import 'package:temopedia/Database/DatabaseHelper.dart';
import 'package:temopedia/HomePage/HomePage.dart';
import 'package:temopedia/LoadingPage/LoadingPage.dart';
import 'package:temopedia/Models/Weakness.dart';
import 'package:temopedia/RootPage/widgets/ErrorDialog.dart';
import 'package:temopedia/utils/Globals.dart' as globals;
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class RootPage extends StatefulWidget {
  RootPage();

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final api = TemTemApi();
  final dbHelper = DatabaseHelper.instance;
  bool _isLoading = true;

  String _loadingText;

  _updateMaxStats() {
    for (final e in globals.temtems) {
      globals.maxStats.hp =
          e.stats.hp > globals.maxStats.hp ? e.stats.hp : globals.maxStats.hp;
      globals.maxStats.sta = e.stats.sta > globals.maxStats.sta
          ? e.stats.sta
          : globals.maxStats.sta;
      globals.maxStats.spd = e.stats.spd > globals.maxStats.spd
          ? e.stats.spd
          : globals.maxStats.spd;
      globals.maxStats.atk = e.stats.atk > globals.maxStats.atk
          ? e.stats.atk
          : globals.maxStats.atk;
      globals.maxStats.def = e.stats.def > globals.maxStats.def
          ? e.stats.def
          : globals.maxStats.def;
      globals.maxStats.spatk = e.stats.atk > globals.maxStats.spatk
          ? e.stats.atk
          : globals.maxStats.spatk;
      globals.maxStats.spdef = e.stats.spdef > globals.maxStats.spdef
          ? e.stats.spdef
          : globals.maxStats.spdef;
    }
  }

  _loadTemtems() async {
    try {
      setState(() => _loadingText = "Loading Temtems...");
      globals.temtems = await api.getTemTems();
      _updateMaxStats();
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Temtems. Please restart the app or report an issue.");
    }
  }

  _loadFavorites() async {
    try {
      setState(() => _loadingText = "Loading Favorites...");
      final favs = await dbHelper.readAllFav();
      for (final fav in favs) {
        if (fav['favorite'] == 1) {
          final newFav =
              globals.temtems.firstWhere((e) => e.number == fav['number']);
          globals.favorites.add(newFav);
        }
      }
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Favorites. Please restart the app or report an issue.");
    }
  }

  _loadTypes() async {
    try {
      setState(() => _loadingText = "Loading Types...");
      globals.types = await api.getTypes();
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Types. Please restart the app or report an issue.");
    }
  }

  _loadTraits() async {
    try {
      setState(() => _loadingText = "Loading Traits...");
      globals.traits = await api.getTraits();
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Traits. Please restart the app or report an issue.");
    }
  }

  _loadTechniques() async {
    try {
      setState(() => _loadingText = "Loading Techniques...");
      globals.techiques = await api.getTechniques();
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Techniques. Please restart the app or report an issue.");
    }
  }

  _loadLocations() async {
    try {
      setState(() => _loadingText = "Loading Locations...");
      globals.locations = await api.getLocations();
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Locations. Please restart the app or report an issue.");
    }
  }

  _loadWeaknesses() async {
    try {
      setState(() => _loadingText = "Loading Weaknesses...");
      final json = await api.getWeaknesses();
      json.weaknesses.forEach((key, value) =>
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
