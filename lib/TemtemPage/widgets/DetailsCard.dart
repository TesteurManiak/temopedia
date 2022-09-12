import 'package:flutter/material.dart';
import 'package:temopedia/styles/text_styles.dart';
import 'package:temopedia/styles/theme.dart';

class DetailsCard extends StatelessWidget {
  final int heightCm;
  final int weightKg;

  const DetailsCard(this.heightCm, this.weightKg);

  Widget _buildLabel(String text) {
    return Text(text, style: TextStyles.detailsLabel);
  }

  Widget _buildDivider() {
    return const SizedBox(
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
              Text("$heightCm cm", style: TextStyles.detailsHW),
              const SizedBox(height: 11),
              _buildLabel("Height"),
            ],
          ),
        ),
        _buildDivider(),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text("$weightKg kg", style: TextStyles.detailsHW),
              const SizedBox(height: 11),
              _buildLabel("Weight"),
            ],
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(21),
          color: MyColors.background,
        ),
        child: _buildDetails(),
      ),
    );
  }
}
