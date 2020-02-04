import 'package:flutter/material.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/TemtemPage/widgets/TemtemImage.dart';
import 'package:temopedia/TemtemPage/widgets/TriviaCard.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/Theme.dart';

class TemtemPage extends StatefulWidget {
  final Temtem temtem;

  TemtemPage(this.temtem);

  @override
  State<StatefulWidget> createState() => _TemtemPageState();
}

class _TemtemPageState extends State<TemtemPage> {
  Widget _buildType() {
    List<Widget> _types = List();
    widget.temtem.types.forEach((type) => _types.add(TypeChip(type)));
    return Wrap(children: _types, spacing: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0.0),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                TemtemImage(widget.temtem),
                _buildType(),
                TriviaCard(widget.temtem.trivia),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
