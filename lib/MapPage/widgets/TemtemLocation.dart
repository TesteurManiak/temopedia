import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/Models/TemLocation.dart';
import 'package:temopedia/Models/Temtem.dart';
import 'package:temopedia/TemtemPage/widgets/TemtemImage.dart';
import 'package:temopedia/styles/Theme.dart';

class TemtemLocation extends StatelessWidget {
  final Temtem temtem;
  final TemLocation location;
  final String imgUrl;

  final _textStyle = TextStyle(color: MyColors.lightFont);

  TemtemLocation(this.temtem, this.location, this.imgUrl);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: MyColors.background,
      ),
      child: Column(
        children: <Widget>[
          Text(location.location, style: _textStyle.copyWith(fontSize: 18)),
          SizedBox(height: 8),
          CachedNetworkImage(imageUrl: imgUrl),
          SizedBox(height: 8),
          TemtemImage(temtem.wikiPortraitUrlLarge, 60),
          SizedBox(height: 8),
          Text(temtem.name,
              style: _textStyle.copyWith(fontWeight: FontWeight.bold)),
          Text(location.frequency, style: _textStyle),
        ],
      ),
    );
  }
}
