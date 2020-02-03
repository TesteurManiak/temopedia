import 'package:flutter/material.dart';
import 'package:temopedia/Models/Temtem.dart';

class HomePage extends StatefulWidget {
  final List<Temtem> temtems;

  HomePage(this.temtems);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
          child: ListView.builder(
            itemCount: widget.temtems == null ? 0 : widget.temtems.length,
            itemBuilder: (context, index) => ListTile(
              title: Text(widget.temtems[index].name),
            ),
          ),
        ),
      ),
    );
  }
}
