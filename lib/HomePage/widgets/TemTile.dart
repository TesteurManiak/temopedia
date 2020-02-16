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
  bool _isChecked;

  @override
  void initState() {
    super.initState();
    _isChecked = false;
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        widget.resetFilter();
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => TemtemPage(widget.temtem)));
      },
      leading: CircleAvatar(
        backgroundColor: MyColors.portraitBack,
        child: CachedNetworkImage(
          imageUrl: widget.temtem.portraitWikiUrl,
          placeholder: (context, url) =>
              Image.asset("assets/temtem_unknown.png"),
        ),
      ),
      title: Text(
        "${widget.temtem.number}. ${widget.temtem.name}",
        overflow: TextOverflow.ellipsis,
        style: TextStyle(color: MyColors.lightFont),
      ),
      trailing: Wrap(
        children: List<Widget>.generate(
                widget.temtem.types.length,
                (index) =>
                    TypeChip(widget.temtem.types[index], dispTitle: false)) +
            [
              Checkbox(
                onChanged: (bool value) => setState(() => _isChecked = value),
                value: _isChecked,
              )
            ],
      ),
    );
  }
}
