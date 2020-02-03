import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/TemtemPage/TemtemPage.dart';
import 'package:temopedia/styles/Theme.dart';

class HomePage extends StatefulWidget {
  final List<Temtem> temtems;

  HomePage(this.temtems);

  @override
  State<StatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _appLogo = Image(
    image: ExactAssetImage("assets/logo.png"),
    height: 42.0,
    alignment: FractionalOffset.center,
  );

  @override
  void initState() {
    super.initState();
  }

  Widget _buildTemtemCard(Temtem item) {
    return ListTile(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => TemtemPage(item))),
      leading: CachedNetworkImage(
          imageUrl: "https://temtem-api.mael.tech${item.icon}"),
      title: Text(
        item.name,
        style: GoogleFonts.patrickHand(
            color: MyColors.lightOrange, letterSpacing: 0.7),
      ),
      trailing: Icon(Icons.arrow_forward_ios, color: MyColors.lightOrange),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyColors.lightOrange,
        onPressed: () {},
        child: Icon(Icons.search, color: MyColors.background),
      ),
      backgroundColor: MyColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(child: _appLogo),
      ),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.only(bottom: 12.0),
          child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: widget.temtems == null ? 0 : widget.temtems.length,
            itemBuilder: (context, index) =>
                _buildTemtemCard(widget.temtems[index]),
          ),
        ),
      ),
    );
  }
}
