import 'package:flutter/material.dart';
import 'package:temopedia/Models/Details.dart';
import 'package:temopedia/styles/Theme.dart';

class DetailsCard extends StatelessWidget {
  final Details details;

  DetailsCard(this.details);

  Widget _buildLabel(String text) {
    return Text(text,
        style: TextStyle(
          color: MyColors.lightOrange,
          height: 0.8,
        ));
  }

  Widget _buildDivider() {
    return Container(
      height: 25,
      child: VerticalDivider(
        color: MyColors.lightOrange,
      ),
    );
  }

  Widget _buildDetails() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildLabel("Height:"),
              SizedBox(height: 11),
              Text("${details.heightCm} cm",
                  style: TextStyle(
                    height: 0.8,
                    color: MyColors.lightOrange,
                  )),
            ],
          ),
        ),
        _buildDivider(),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              _buildLabel("Weight:"),
              SizedBox(height: 11),
              Text("${details.weightKg} kg",
                  style: TextStyle(
                    height: 0.8,
                    color: MyColors.lightOrange,
                  )),
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text("Details",
              style: TextStyle(
                color: MyColors.lightOrange,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                height: 0.8,
              )),
          SizedBox(height: 28),
          _buildDetails(),
        ],
      ),
    );
  }
}
