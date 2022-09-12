import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

import '../Database/database_helper.dart';
import '../Models/weakness.dart';
import '../home/home_page.dart';
import '../loading/loading_page.dart';
import '../utils/globals.dart' as globals;
import 'widgets/error_dialog.dart';

class RootPage extends StatefulWidget {
  static const routeName = '/';

  const RootPage({super.key});

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final api = TemTemApi();
  final _loadingTextController = BehaviorSubject<String>.seeded('Loading');
  final _isLoadingController = BehaviorSubject<bool>.seeded(true);

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
    _loadingTextController.sink.add('Loading Temtems');
    globals.temtems = await api.getTemTems();
    _updateMaxStats();
  }

  _loadFavorites() async {
    if (!kIsWeb) {
      _loadingTextController.sink.add("Loading Favorites");
      final favs = await DatabaseHelper.instance.readAllFav();
      for (final fav in favs) {
        if (fav['favorite'] == 1) {
          final newFav =
              globals.temtems.firstWhere((e) => e.number == fav['number']);
          globals.favorites.add(newFav);
        }
      }
    }
  }

  _loadTypes() async {
    _loadingTextController.sink.add("Loading Types");
    globals.types = await api.getTypes();
  }

  _loadTraits() async {
    _loadingTextController.sink.add('Loading Traits');
    globals.traits = await api.getTraits();
  }

  _loadTechniques() async {
    _loadingTextController.sink.add('Loading Techniques');
    globals.techiques = await api.getTechniques();
  }

  _loadLocations() async {
    _loadingTextController.sink.add('Loading Locations');
    globals.locations = await api.getLocations();
  }

  _loadWeaknesses() async {
    _loadingTextController.sink.add('Loading Weaknesses');
    final json = await api.getWeaknesses();
    json.weaknesses.forEach(
      (key, value) => globals.weaknesses.add(Weakness.fromJson(value, key)),
    );
  }

  Future<void> _loadList() async {
    try {
      await _loadTemtems();
      await _loadFavorites();
      await _loadTypes();
      await _loadTraits();
      await _loadTechniques();
      await _loadLocations();
      await _loadWeaknesses();
    } catch (e) {
      debugPrint(e.toString());
      showDialog(context: context, builder: (context) => ErrorDialog(e));
    }
  }

  @override
  void initState() {
    super.initState();
    _loadList().then((_) => _isLoadingController.sink.add(false));
  }

  @override
  void dispose() {
    _loadingTextController.close();
    _isLoadingController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<bool>(
      stream: _isLoadingController.stream,
      builder: (context, snapshot) {
        switch (snapshot.data) {
          case false:
            return HomePage(globals.temtems);
          default:
            return LoadingPage(_loadingTextController.stream);
        }
      },
    );
  }
}
