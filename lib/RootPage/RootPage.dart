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

  _loadTemtems() async {
    try {
      setState(() => _loadingText = "Loading Temtems...");
      globals.temtems = await api.getTemTems();
    } catch (e) {
      print(e);
      throw Exception(
          "Error while loading Temtems. Please restart the app or report an issue.");
    }
  }

  _loadFavorites() async {
    try {
      setState(() => _loadingText = "Loading Favorites...");
      // TODO rework favorite
      // for (var temtem in globals.temtems)
      //   temtem.owned = await dbHelper.read(temtem.number);
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
