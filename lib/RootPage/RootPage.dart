import 'package:flutter/material.dart';
import 'package:temopedia/Api/TemtemApi.dart';
import 'package:temopedia/HomePage/HomePage.dart';
import 'package:temopedia/LoadingPage/LoadingPage.dart';
import 'package:temopedia/Models/Temtem.dart';

class RootPage extends StatefulWidget {
  RootPage();

  @override
  State<StatefulWidget> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final api = TemtemApi();
  bool _isLoading = true;

  List<Temtem> temtems = [];

  _loadList() async {
    var json = await api.getAllTemtem();
    json.forEach((item) => temtems.add(Temtem.fromJson(item)));
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
        return HomePage(temtems);
      default:
        return LoadingPage();
    }
  }
}
