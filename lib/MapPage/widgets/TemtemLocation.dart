import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:temopedia/Models/TemLocation.dart';
import 'package:temopedia/TemtemPage/widgets/TemtemImage.dart';
import 'package:temopedia/styles/TextStyles.dart';
import 'package:temopedia/styles/Theme.dart';
import 'package:temtem_api_wrapper/temtem_api_wrapper.dart';

class TemtemLocation extends StatelessWidget {
  final TemTemApiTem temtem;
  final TemLocation location;
  final String imgUrl;

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
          Text(location.location, style: TextStyles.location),
          SizedBox(height: 8),
          CachedNetworkImage(imageUrl: imgUrl),
          SizedBox(height: 8),
          TemtemImage(temtem.wikiPortraitUrlLarge, 60),
          SizedBox(height: 8),
          Text(temtem.name, style: TextStyles.lightBold),
          Text(location.frequency, style: TextStyles.lightText),
        ],
      ),
    );
  }
}
