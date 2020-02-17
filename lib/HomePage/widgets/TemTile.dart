import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/TemtemPage/TemtemPage.dart';
import 'package:temopedia/TemtemPage/widgets/TypeChip.dart';
import 'package:temopedia/styles/Theme.dart';

class TemTile extends StatefulWidget {
  final VoidCallback resetFilter;
  final Temtem temtem;

  TemTile(this.temtem, {@required this.resetFilter});

  @override
  State<StatefulWidget> createState() => _TemTileState();
}

class _TemTileState extends State<TemTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        widget.resetFilter();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TemtemPage(widget.temtem)));
      },
      leading: Wrap(
        children: <Widget>[
          Checkbox(
            onChanged: (bool value) =>
                setState(() => widget.temtem.owned = value),
            value: widget.temtem.owned,
          ),
          CircleAvatar(
            backgroundColor: MyColors.portraitBack,
            child: CachedNetworkImage(
              imageUrl: widget.temtem.portraitWikiUrl,
              placeholder: (context, url) =>
                  Image.asset("assets/temtem_unknown.png"),
            ),
          ),
        ],
      ),
      title: Text(
        "${widget.temtem.number}. ${widget.temtem.name}",
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: MyColors.lightFont),
      ),
      trailing: Wrap(
        children: List<Widget>.generate(widget.temtem.types.length,
            (index) => TypeChip(widget.temtem.types[index], dispTitle: false)),
      ),
    );
  }
}
