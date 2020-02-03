import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temopedia/Models/Temtem.dart';
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
    return Card(
      color: MyColors.lightOrange,
      child: Container(
        padding: const EdgeInsets.all(8.0),
        child: Wrap(children: _types),
      ),
    );
  }

  Widget _buildTriviaCards() {
    List<Widget> _cards = List();
    widget.temtem.trivia.forEach(
      (info) => _cards.add(Text(
        info,
        textAlign: TextAlign.center,
        style: GoogleFonts.patrickHand(
            color: MyColors.background, letterSpacing: 0.7),
      )),
    );
    return Card(
      color: MyColors.lightOrange,
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(8.0),
        child: Column(children: _cards),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Text(
          widget.temtem.name,
          style: GoogleFonts.patrickHand(
              color: MyColors.lightOrange, letterSpacing: 0.7),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Center(
                    child: CachedNetworkImage(
                        imageUrl: widget.temtem.wikiPortraitUrlLarge)),
                _buildType(),
                _buildTriviaCards(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
