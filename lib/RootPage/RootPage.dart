import 'package:flutter/material.dart';
import 'package:temopedia/Api/TemtemApi.dart';
import 'package:temopedia/HomePage/HomePage.dart';
import 'package:temopedia/LoadingPage/LoadingPage.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/Models/Type.dart';
import 'package:temopedia/utils/Globals.dart' as globals;

class RootPage extends StatefulWidget {
  RootPage();

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final api = TemtemApi();
  bool _isLoading = true;

  _loadList() async {
    var json = await api.getRequest(TemtemApi.allTemtems);
    json.forEach((item) => globals.temtems.add(Temtem.fromJson(item)));

    json = await api.getRequest(TemtemApi.types);
    json.forEach((item) => globals.types.add(TemType.fromJson(item)));

    setState(() => _isLoading = false);
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
        return HomePage(globals.temtems);
      default:
        return LoadingPage();
    }
  }
}
