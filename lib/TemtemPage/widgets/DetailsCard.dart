import 'package:flutter/material.dart';
import 'package:temopedia/Models/Details.dart';
import 'package:temopedia/styles/Theme.dart';

class DetailsCard extends StatelessWidget {
  final Details details;

  DetailsCard(this.details);

  Widget _buildLabel(String text) {
    return Text(text,
        style: TextStyle(
          color: MyColors.darkFont,
          height: 0.8,
        ));
  }

  Widget _buildDivider() {
    return Container(
      height: 30,
      child: VerticalDivider(
        color: MyColors.darkFont,
      ),
    );
  }

  Widget _buildDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("${details.heightCm} cm",
                  style: TextStyle(color: MyColors.lightFont, fontSize: 25)),
              SizedBox(height: 11),
              _buildLabel("Height"),
            ],
          ),
        ),
        _buildDivider(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("${details.weightKg} kg",
                  style: TextStyle(color: MyColors.lightFont, fontSize: 25)),
              SizedBox(height: 11),
              _buildLabel("Weight"),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(21),
        color: MyColors.background,
      ),
      child: _buildDetails(),
    );
  }
}
