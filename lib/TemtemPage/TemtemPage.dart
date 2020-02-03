import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/styles/Theme.dart';

class TemtemPage extends StatefulWidget {
  final Temtem temtem;

  TemtemPage(this.temtem);

  @override
  State<StatefulWidget> createState() => _TemtemPageState();
}

class _TemtemPageState extends State<TemtemPage> {
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
          child: Column(
            children: <Widget>[
              Center(
                  child: CachedNetworkImage(
                      imageUrl: widget.temtem.wikiPortraitUrlLarge))
            ],
          ),
        ),
      ),
    );
  }
}
